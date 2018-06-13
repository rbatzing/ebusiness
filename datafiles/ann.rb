require "rubygems"
require "ai4r"

    # Backpropagation is a supervised learning technique (described 
    # by Paul Werbos in 1974, and further developed by David E. 
    # Rumelhart, Geoffrey E. Hinton and Ronald J. Williams in 1986)
    # 
    # This is an implementation of a multilayer perceptron network, using
    # the backpropagation algorithm for learning. Implemented in Ruby by 
	# Sergio Fierens in a GitHub repository located at
	#
    #   	https://github.com/SergioFierens/ai4r

	# Features:
	# * Class method get_parameters_info obtains the details on algorithm
    #   parameters. 
	# * Class method set_parameters will set values for these parameters.
    # 
    # * :disable_bias => If true, the algorithm will not use bias nodes.
    #   False by default.
    # * :initial_weight_function => f(n, i, j) must return the initial 
    #   weight for the conection between the node i in layer n, and node j in 
    #   layer n+1. By default a random number in [-1, 1) range.
    # * :propagation_function => Sigmoid by default: 
    #        lambda { |x| 1/(1+Math.exp(-1*(x))) }
    # * :derivative_propagation_function => Derivative of the propagation 
    #   function, based on propagation function output. 
    #   By default: lambda { |y| y*(1-y) }, where y=propagation_function(x)
    # * :learning_rate => By default 0.25        
    # * :momentum => By default 0.1. Set this parameter to 0 to disable
    #   momentum
  

def findmax(a)
  max = a[0]
  maxpos = 0
  a.each_with_index do |x,i|
    if x > max 
	   max = x
	   maxpos = i
	end
  end
  return maxpos
end



$testSet =
  [[0,1,0,0, 0,1,0,0, 0,1,0,0, 0,1,0,0], # Thin lines
   [0,0,0,0, 1,1,1,1, 0,0,0,0, 0,0,0,0],
   [1,0,0,0, 1,1,0,0, 0,1,1,0, 0,0,1,0],
   [0,0,0,1, 0,0,1,1, 0,1,1,0, 1,0,0,0],
   [0,1,1,1, 1,0,0,0, 1,0,0,1, 1,1,0,1],
   [0,1,0,0, 0,0,1,0, 0,1,0,0, 0,0,1,0], # Set with only half pixels
   [0,0,0,0, 1,0,1,0, 1,0,1,0, 0,0,0,0],
   [1,0,0,0, 0,1,1,0, 0,1,1,0, 0,0,0,1],
   [0,0,0,1, 0,1,1,0, 0,1,1,0, 1,0,0,0],
   [1,0,1,0, 0,0,0,1, 1,0,0,0, 0,1,0,1],
   [0,1,1,0, 0,1,1,0, 0,1,1,0, 0,1,1,0], # Copy of training set
   [0,0,0,0, 1,1,1,1, 1,1,1,1, 0,0,0,0],
   [1,1,0,0, 1,1,1,0, 0,1,1,1, 0,0,1,1],
   [0,0,1,1, 0,1,1,1, 1,1,1,0, 1,1,0,0],
   [1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1]]
   
$testVal = # classification for testing set
  [[1,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1],
   [1,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1],
   [1,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1]]
   
trainingSet = # input for the training set
  [[0,1,1,0, 0,1,1,0, 0,1,1,0, 0,1,1,0],
   [0,0,0,0, 1,1,1,1, 1,1,1,1, 0,0,0,0],
   [1,1,0,0, 1,1,1,0, 0,1,1,1, 0,0,1,1],
   [0,0,1,1, 0,1,1,1, 1,1,1,0, 1,1,0,0],
   [1,1,1,1, 1,0,0,1, 1,0,0,1, 1,1,1,1]]
  
trainingVal = # classification for training set
  [[1,0,0,0,0], [0,1,0,0,0], [0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,1]]

net = Ai4r::NeuralNetwork::Backpropagation.new([16, 20, 20,5])
   
def tryTestSet(net)
  correct = 0
  dev = 0.0
  line1 = " "
  line2 = " "  
  15.times do |j|
    t = net.eval($testSet[j])
	if findmax(t) == findmax($testVal[j])
	  line1 += "*"
	  correct = correct + 1
	else
	  line1 += " "
	end
	if j > 9
	   5.times do |i|
	     dev = dev + (t[i] - $testVal[j][i]) ** 2
		 line2 += "%.2f " % t[i]
	   end
	   line2 += "- "
	end
  end
  dev = Math.sqrt(dev/74)
  puts "  #{line1} #{correct}/15 - Dev: #{dev}"
  puts line2
  return dev
end

correct = 100.0
cnt = 0
while correct >= 0.01 do
  [0,1,2,3,4].shuffle.each do |j| # Train all shapes one time
      net.train(trainingSet[j], trainingVal[j])
  end 

#  if cnt.even? # Test every even attempt
  if (cnt % 5) == 0 # Test every fifth attempt
    print "%5i " % cnt  
    correct = tryTestSet(net)
  end
  cnt = cnt + 1  
end
