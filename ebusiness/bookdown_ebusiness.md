--- 
title: "e-Business"
author: "Robert Batzinger"
date: "2019-06-25"
site: bookdown::bookdown_site
output: 
  bookdown::gitbook:
    lib_dir: "book_assets"
    config:
      toc:
        collapse: subsection
        scroll_highlight: yes
        before: null
        after: |
          <li><a href="https://github.com/rstudio/bookdown">
          Proudly published with bookdown</a></li>
      edit: null
  bookdown::pdf_book:
    keep_tex: yes
    includes:
      before_body: before_body.tex
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: alpha
link-citations: yes
github-repo: rbatzing/ebusiness
url: 'http://github.com/rbatzing/ebusiness/'
description: "This is a minimal example of the book I am trying to write. The output format for this example is bookdown::gitbook."
cover-image: 'images/cover11.png'
---

# Book Jacket {-}


\includegraphics[width=0.25\linewidth]{images/cover11} 

## Abstract {-}

This book attempts to introduce undergraduate students to the nature and requirements for conducting business online. It starts with a discussion of the nature of business and the challenges and potential of the online environment, followed by a review of common methods of modelling business, and a study of open source business solutions.
The final chapter focuses on emerging trends and sea-changes in e-Business. This book is currently a work in progress that is also comparing the process of book writing in both LeanPub markdown and Rstudio Bookdown 

## About the Author {-}

Robert Batzinger is an emeritus instructor in Computer Science at Payap University. He holds an undergraduate degree in Organic Chemistry, masters degree in Computer Science and Applied Mathematics, doctoral degree in Pathobiology and post-doctoral training in Chemical carcinogenesis. As such, he has been involved in numerous scientific and technical projects for over 50 years. He has published laboratory research in such fields as virology, organic chemistry, anthelmithics, and chemical mutagenesis. He also developed software to manage the financial and academic records of schools, support the development of publications in non-Roman scripts of Asia and Canada, and monitor the progress of multiple development projects. He has held administrative and advisory roles in various organizations and businesses, and has been instrumental in establishing web presence for many of them. He is currently developing data science and machine learning applications to address critical business management problems.






<!--chapter:end:index.Rmd-->

# Front Matter {-}


\begin{center}\includegraphics[width=0.9\linewidth]{images/door} \end{center}

\newpage

## Dedication {-}

>
> Now to him who is able to do far more abundantly<br>\newline than all that we ask or think, according<br>\newline to the power at work within us.<br>\newline -- Eph 3:20 (ESV)<br>\newline
>
>
>
> \tai ขอให้พระเกียรติมีแด่พระองค์ผู้ทรงสามารถทำทุกสิ่งได้<br>\newline มากยิ่งกว่าที่เราทูลขอหรือคิด โดยฤทธานุภาพ<br>\newline ที่ทำกิจอยู่ภายในเรา<br>\newline -- เอเฟซัส 3:20 (THSV11)<br>\newline
>

\newpage

## Acknowledgements {-}

The development of this book would not have been possible without the feedback and suggestions of colleagues and students. While I acknowledge that I am responsible for any remaining errors in this book, my students, referees, and readers have contributed immensely to the development of this book. I would like to acknowledge the impact of Ms. Phatnaree Srisomphan in helping to shape both the curriculum of this course and the nature of this book. I am also grateful for the support and encouragement of my wife Khajohn, especially in those long critical sessions when I was struggling to forge and edit the text of this manuscript. 

\newpage

## Colophon {-}

The cover is a photograph of the Financial District from the Marina Bay in Singapore. The amazing metamorphsis of this central business district from swamp land into a thriving financial center of the Region is representative of the current sea-changes in business driven by technological and social developments. Similarly, today's developers of business systems are sowing seeds that will change the future, much like Sir Raffles' vision for a seaport has grown into today's Singapore. 

While early drafts of this book were written in Leanpub Flavored Markdown, this book was developed in RStudio using the **bookdown** package [@R-bookdown] (which was built on top of R Markdown and **knitr** [@Xie2015]. It was edited in RStudio and later compiled and published online simultaneously as an HTML website, a printable document in PDF and electronic book EPUB format with only 3 clicks of the mouse.  

The cover, front matter, and Chapter 4 photos were downloaded from [Pixabay](https://pixabay.com/images/search/singapore).
The extra reading, discussion and exercise sidebar icons were created by [Freepik](https://www.freepik.com) and used as per [Creative Commons 3.0 License](https://creativecommons.org/licenses/by/3.0). Network and flow diagrams were created with yEd from yWorks. [@YED2018]

\newpage

<!--chapter:end:0-FrontMatter.Rmd-->

# Preface {-}

Advances and developments in Computer Science (CS) are driven by the need to create applications that effectively address real-world problems. Successful software development starts with a deep understanding of the problem domain from the users perspective and developing an application that is intuitive and easy to use.  Breakthroughs in understanding the nature of a problem domain create new opportunities for addressing the needs of computer users.  It is now common practice to integrate end users into software development and testing teams, as the resulting products tend to be more intuitive and successful.  

In CS, our graduates will go on to develop applications and solutions for clients who, for the most part, have not studied CS, but who are experts in other problem domains. Courses that help students to explore and understand the basic issues in other problem domains are at the heart of our liberal arts education which balances professional skills with general knowledge needed to function effectively in the market place.
As a part of this effort to introduce CS students to e-Business from a Business/IT perspective, we offer a course with the following course description. It is taught in Thai using English-based resources.

> **CS340 \taibf ธุรกิจอิเล็กทรอนิกส์:**  \tai หลักการการดำเนินธุรกิจโดยใช้สื่ออิเล็กทรอนิกส์ การวางแผนทรัพยากรขององค์กร การบริหารความสัมพันธ์ลูกค้า และการสื่อสารผ่านโซเชียลมีเดียทั้งภายในและภายนอกองค์กร

> **CS340 E-BUSINESS:** Principles of business operations using information technology. This includes a discussion of Enterprise Resource Planning (ERP), Customer Relationship Management (CRM) and the use of social media to communicate both within and outside the organization.

This book is the product of that course and started as a collection of class slides, notes, and exercises. The content of this book continues to evolve in response to student feedback as well as changes in the software industry and conversations with business leaders and software developers. The basic design of this book is meant to parallel the outline of the corresponding course, as given below:

> **Chapter 1: General principles.**  A discussion of the key principles that define and characterize business both in the real world and in cyberspace.

> **Chapter 2: Business modeling.** A discussion of leading methods used to create software models of the key transactions and activities that take place in business in general and in e-business in particular.

> **Chapter 3: e-Business systems.** A survey of the concepts and functions of key open-source, online business systems. Each system is studied to determine how solutions are provided by addressing mission-critical questions using available data resources.

> **Chapter 4: Emerging Technologies.** A discussion of futuristic e-Business technologies and practices that have already had an impact on how business is conducted worldwide.

\mainmatter

<!--chapter:end:00-Preface.Rmd-->

# GENERAL PRINCIPLES


\begin{center}\includegraphics[width=0.9\linewidth]{images/keybusinesscomponents} \end{center}

As an introduction to the context suroundingt e-Business, this chapter will explore the nature, need and management of business processes and  components.

\newpage

## Essentials of Business

Business is a set of interactions in which goods and services are provided and compensation is rendered.
In essence, businesses developing the means for acquiring marketable goods or servies that customers will purchase in sufficient qualities to make the endeavor worthwhile. Ideally, a start-up aims to seek fair compensation for goods and services rendered in the most effective and efficient manner.
Businesses become sustainable when the compensation meets the short-term and long-term requirements of the business. Most business fail because of an inability to develop and maintain a market demand that leads to sales that meet or exceed their expenses. Balancing the demands and requirements of each component of business requires timely management decisions based on accurate information. As the speed and volume of businesses grow within the gloabl economy, rapid communication and acknowledgement of detailed information has given rise to many e-Business practices and applications designed to support the operation and growth of business. This book will attempt to explore the context and use of common e-Business techniques and applications. The following sections will help to describe the context of IT services within a modern large scale enterprize, particularly those operating in Thailand.


\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">**Exercise: The Nature of Business**

Discuss how the following premises would impact the nature, as well as the potential for long-term success of  businesses.

1. Business is all about making lots and lots of money quickly by any means possible.
2. Business is about fair compensation for goods and service to both suppliers and customers.
3. Business is the process of copying the industry leaders to provide similar goods and services at a fraction of the cost.
4. Business provides special opportunities for myself, my friends and relatives at the expense of our customers.
</div>\EndKnitrBlock{rmdexercise}

### Business processes

Individual businesses are generally centered around a core set of goods and services which address the specific needs of clients creating a sense of value and desire. Good design and pre-market testing help to define the nature of the products and services. At the same time, controlling production and distribution costs make it possible to deliver goods and services at a suitable price point for customers to consider purchase. Careful supply chain and operations management develops a network of contracts and business transactions with suppliers and distributors that ensures that the flow of materials, products and cash occur on time and on budget. 

![Key Business Processes](images/businessprocess.png)

\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">**Exercise: Match market principles to market characteristics**

|   Principles |    Characteristics |
|--------------|----------------|
| (A) Access to market <br>\newline(B) Brand recognition<br>\newline (C) Customer pool<br>\newline(D) Investment capital<br>\newline(E) Resources<br>\newline(F) Market value |  ___ Consumer preference<br>\newline  ___ Supply of raw materials<br>\newline ___ Distinctive goods and services<br>\newline ___ Investors and stock holders<br>\newline ___ Location and traffic<br>\newline ___ Steady market demand |
</div>\EndKnitrBlock{rmdexercise}

### Core Activities of a Business

Business requires coordinated teamwork of specialists in various departments to achieve efficiency and effectiveness on a large scale. 
 
* **Finance:** mid-term and long-range financial planning to ensure that there is an adequate supply of money available to 
* **Accounting:** a record of financial commitments and compensations for the purpose of tracking movement of value across the organization and throughout the production process
* **Marketing:** getting groups of potential customers and consumers interested in products and services. 
* **Sales:** selling products and services to customers maintain records to assist forecasting future demand and market growth
* **Operations:** systems to acquire resources, produce, package and deliver products
* **Management:** sets the direction and pace of business endeavors

### Support functions

As businesses grow in size, various support functions are required to keep the core business running. These functions include the following:

* **Management Information Systems:** collect, analyze and distribute mission-critical information to key administrators
* **Human Resources:** attract, hire, train and retain effective employees
* **Legal Department:** ensure compliance with laws and regulations
* **Investor Relations:** communications with shareholders to attract support and investments
* **Customer Relations:** after sales care of customers and encouragement of brand loyalty
* **Facilities Management:** maintenance of facilities and equipment to maximize the utility and value of capital investments in equipment and infrastructure.

\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: Key business concepts**

Create a mindmap that illustrates the relationship between the following sets of terms, along with their Thai translations.

* **Key business components:** Access to market; Resources; Value; Investment capital; Marketable goods and services; Customers 
* **Core business activities:** Finance; Accounting; Marketing; Sales; Operations; Management.
* **Support functions:** Management information systems; Human resources; Legal department; Investor relations; Customer relations; Facilities management
</div>\EndKnitrBlock{rmdexercise}


## Understanding the role of IT in business

As IT Departments become integrated into the business strategy, they provide tools, information and communication systems that can play a transformative role in the nature of the business. Enterprise Architecture tend to grow as IT Department move along these evolutionary steps. [@Hohpe2017a], [@Hohpe2017b]

### The Establishment of an IT Department

1. Understand the business strategy
2. Translate into an IT strategy
3. Create transparency for IT developments
4. Define IT target picture
5. Define the roadmap for implementing IT
6. Harmonize and govern
7. Obtain feedback and refine
8. Coach and mentor

Among IT Managers, there appears to be 2 major approaches to understanding the nature of business and IT's function: using IT to redesign the business or engineering the current organization. The political implications of the approach chosen can be immense and often the success of an IT manager will depend on the level of support from those that manage the IT department manager.

|Architecting the Business | Reverse-Engineering the Organization |
|:----------------|:-----------|
|* Identification of growth areas |* Divisions and business lines |
|* Profitability of goods and services |* Group level vs divisions |
|* Geographic/demographic opportunities | * Reportings lines |
|* Geopolitical aspects | * Matrix organizations |
|* Acquisitions and divestitures | * Hidden org chart/loyalties |

### Business views of the role of IT

Business managers have 4 main approaches to managing IT based on the main focus of the business administration.


| **Focus** | **Role** | **Reports to** | **Common stragegy** | **Levers** |
|---------:|:---------:|:---------------:|:----------------|:---------------:|
| Cost of IT  |  Cost Center | CFO | Outsource IT |  Cost cutting |
| Return on investment | Asset | COO | Harmonize / Rationalize | Economies of scale |
| Business value of IT |  Partner |  CDO |  Insource IT |  Economies of Efficiency |
| Speed / innovation | Enabler |  CEO | IT = business | Economies of Speed |


IT Strategy provides a road map of where IT developments and operations are going. This is derived from an understanding of the nature of the business and is not restricted by current realities. The IT strategy is as much a definition of what IT intends to do as well as what it will not do. Above all, an effective IT Business strategy does not conform to a vendor's product road map. However, successful strategies must recognize the IT Operating Model that the business gives to IT. [@Ross2006]

**IT Operating Models**

| Integration | Minimal Standards | Highly Standardized |
|:-----:|:---------------------|:---------------|
|High | **Coordination**       | **Unification** |
|     |* Unique business units<br>\newline * Examples: Merrill Lynch, Toyota<br>\newline * Key IT capability:<br>\newline &nbsp;&nbsp; - access to shared data<br>\newline &nbsp;&nbsp; - standard technology interfaces | * Single business with global standards<br>\newline * Examples: Delta Airlines, Pepsi<br>\newline * Key IT capability:<br>\newline &nbsp;&nbsp; - enterprise systems to reinforce<br> standards<br>\newline &nbsp;&nbsp;- provide access to global data |
|     |                       |                 |
| Low | **Diversification**   | **Replication** |
|     | * Independent business units<br>\newline  * different customers/expertise <br>\newline  * Examples: Johnson & Johnson, GE <br> * Key IT capability:<br>\newline &nbsp;&nbsp; - provide economies of scale <br>\newline &nbsp;&nbsp; - do not limit independence | * Independent but similar business units<br>\newline * Example: Marriott, CEMEX<br>\newline * Key IT capability:<br>\newline &nbsp;&nbsp; - provide standard infrastructure and app<br>\newline &nbsp;&nbsp; - maximize global efficiencies |


### Software to facilitate business interactions

As a business grows, so does the complexity of the interactions between its departments. There is a complex web of interactions within a modern business organization. Management focuses on the control, operation, and development of a business. Financiers use investments to maximize opportunities to grow the business.  Production engineers tune the processes needed to deliver products, But the key concern for IT is the nature and volume of information to be analyzed, shared and communicated in a timely fashion,
as shown in the following diagram:

![Interactions between business departments](images/businessdepts.png)


Even with over 50 years of intensive development to reduce the complexity of doing business,  new software tools and apps are still emerging at an astounding rate. The following sidebars attempt to classify common software systems found in medium to large size enterprises into 2 basic types of business systems.

* **Enterprise Resource Planning (ERP):** data systems that store and communicate operational data in a way facitates reporting and future planning.

* **Enterprise Resource Management (ERM):** software systems that facilitate the monitor and manage interaction and the use of resources.



\BeginKnitrBlock{rmdextra}<div class="rmdextra"> 
## ERP Software Systems {-} 

* **CONTENT MANAGEMENT SYSTEM (CMS):**

  * Collections of guides, rulebooks, forms, and procedure guidelines
  * Blogs, newsletter, announcements
  * Catalogues, price lists
  * Documentation of intellectual property and licenses
  
* **PRODUCT INFORMATION MANAGEMENT (PIM):**

  * Manual, troubleshooting guides
  * Parts list, equivalences
  * Price lists and stock inventory
  * Photos and promotional materials
  
* **Accounting Information System (AIS):**

  * Revenue: cash inflow (sales)
  * Expenditure: cash outflow (payroll, equipment)
  * Conversion: work-in-progress transactions (raw material, precursor inventory)
  * Administrative: reporting (income statement, balance sheet, cash flows)
</div>\EndKnitrBlock{rmdextra}


\BeginKnitrBlock{rmdextra}<div class="rmdextra">
## ERM Software systems {-}

* **B2B: Business-to-business software:** manages workflow with suppliers and partners

   * Directory of suppliers and products
   * Social media confirmation of quality
   
* **B2C: Business-to-consumer software:** serve the needs of individual customers particularly in regards to customer history, order status, and billing information.

   * Online store
   * Product manuals, product information
   * Delivery tracking

* **Human Resources Management (HRM):** 

  * Payroll, bonuses, raises
  * Staff work experience, Performance appraisal, skill tests
  * Flight risk, employee satisfaction
  * Education, training

* **Marketing Automation Platform (MAP):** 

  * CRM: Customer Relationship Management - purchase history, rewards, interests, 
  * MCP: Marketing Campaign Planning - Ad words, analytics, costs, contracts, effectiveness
</div>\EndKnitrBlock{rmdextra}
  
## Essentials of Business Quality Management

Businesses are driven by an active communication chain that drives the business process. The effectiveness of teamwork and management depends on effective communication. However, the communication chain can be interrupted by bottlenecks in the flow of data, inconsistent or misleading reporting, and other communication breakdowns. Quality standards help ensure that processes related to production and quality control are subject to timely, data-driven management. In essence the ability of a business to fix a problem depends on the quality of communications that provide access to the description of the true nature and extend of the problem and knowledge of possible remedies. 

![Communication Chain](images/communication.png)

Meaningful communication requires a reciprocal interaction between the speaker and the listener. As shown in the following table, social norms and good ethicate depend on transmission of a message and an appropriate response. The communication chain is lost when messages in either direction are lost or misinterpreted. The growing use of social media with its emphasis on icons or one word responses has often been blamed for the reduction in quality of personal verbal and written skills. Interaction with customers and suppliers depends on clear and effective communication. 

| Initiation message | Response message |
|-----------|-----------|
| Greeting | Acknowledgement |
| Question | Response |
| Proposal | Acceptance/Rejection |
| Command | Action |
| Accusation | Acceptance/Rebuttal |

### ISO9000/ISO9001

ISO 9000 was first published in 1987 by the International Organization for Standardization (ISO). The derivative quality standards help organizations address the needs of customers and while meeting relevant statutory and regulatory requirements.[@ISOweb]  The ISO9001 standards provide guidance and tools for companies and organizations who want to ensure that their processes regularly deliver products and services that meet customer’s requirements. It also defines the requirements for certification against these standards which are reviewed and revised every 5 years.[@ISO2015]

* **Point 1: Clear customer understanding** of the goods or services offered within a business contract.
* **Point 2: Verification of intended results** to ensure that the terms of the business contract were met.
* **Point 3: Prevention of undesired effects** that might cause delays or problems in the delivery of goods and services
* **Point 4: Improve performance** based on the information gathered



\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">**An example of an ISO9001 compliant transaction**
  
Discuss what points of the ISO9001 standard is satisfied by the follow stages of a simple business transaction at a restuarant.

1. The customer enters a restaurant and is given a menu with pictures of the food.
2. The waiter takes the order and repeats the order back to the customer for confirmation.
3. The waiter brings the food and doubles check that the order is complete.
4. The waiter comes back to check if everything is okay.
5. The cashier checks that all was well when the bill is paid.
6. The whole transaction is recorded and the receipt gives a website for feedback.
7. The customer's feedback on the website is analyzed for patterns of service that could be improved.

</div>\EndKnitrBlock{rmddiscussion}

\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: ISO9001 and MacDonalds**

Worldwide MacDonald is a successful multinational enterprise run by staff most of which are under the age of 21 and yet it is a certified ISO9001 company. When a customer orders food at any MacDonald outlet in the world, the interaction between the customer and the counter staff is always the same. 

* Create a swim lane workflow diagram to describe the information flow in the conversation between the customer, the counter staff, the kitchen staff, the accounting system, and the point-of-sale computer system. 
* Identify how the basic principles of ISO9001 principles for quality management are a ddressed by this basic operating procedure..
</div>\EndKnitrBlock{rmdexercise}

## Changes to Business

Businesses today have unprecedented opportunities to rapidly address issues that arise. Such advances in such fields as deep machine learning, Big Data analytics, Internet of Things, collective intelligence, online payment and social media are creating a reality that was only hinted at by the 1999 book ***Business at the speed of thought.*** [@Gates1999] Businesses that were market leaders in the past, but failed to keep pace with the changes, suddenly find themselves bankrupt and replaced by new competitors. In 500BC, Heraclitus of Ephesus once penned the warning that "Change is the only constant in life" but he words ring true as an accurate description of today's business environment.    

### Open Organization

Since ISO9000 was first published in 1987, it has been revised and replaced by a long list of international standards that define and specify how various aspects of business, hardware, and software are to be implemented. Each new standard built on the principles already established and addresses the weaknesses of previous standards. [@ISO2015] While these developments help to ensure consistent service and quality, something else was needed to empower staff to collectively think and implement creative solutions to challenges. Jim Whitehurst at RedHat.com invested considerable effort to address this problem. He started with the realization that "the best practices in creating open source software also translate well into managing an entire company." By embracing open source values and creating a new open standard for communities, he showed how leaders can successfully create "a rebooted, redesigned, reinvented organization suitable for the decentralized, empowered, digital age."[@Whitehurst2015]  In creating the open organization, he and his colleagues have documented a shift that is changing in the way businesses are organized, managed and run.


| Traditional values | Post-Modern values |
|-------------|-------------|
|Loyality to the organizational hierachy | Loyality to the mission, purpose and values of the company |
| Compliance | Focus creativity to create solutions |
| Predictability | Adaptability to change |
| Efficiency | Effectiveness |
| Plan, Prescribe, Execute | Envision, Prioritize, Implement, Adjust |


Successful, innovative organizations demonstrate the following core principles which form the basis for the core elements of open organizations. [@Whitehurst2019]

* The best ideas come from anywhere.
* The best ideas should always win.
* Contribution matters more than title.


![Core elements of open organizations](images/openorg.png)

Although every open organization is unique, there is a common core of elements that characterize open organizations. Each core element is composed of a different dataset to be gathered, distributed, and combined in powerful and productive ways.

* **Transparency:** Workers have access to all pertinent information and willingly disclose and discuss their work. Workers can access and review the processes and arguments that lead to decisions and are free to comment and respond to them. Successes and failures are valued for the lessons they provide.
* **Inclusivity:** Protocols and procedures are developed to encourage constructive discussion from diverse perspectives. Leaders actively seek to include voices not present in the dialog. Technology is used to ensure and encourage access to discussion forums.
* **Adaptability:** Feedback mechanisms provide access for suggestions from members of the organizations and outside members.
* **Collaboration:** The organization adheres to the principle that working together produces better results. Products of development are made available to other projects to use creatively.
* **Community:** Shared values and principles that guide decision making are clear and obvious to members of the organization. All workers are encouraged and empowered to make meaningful contributions to the collaborative effort. Leaders mentor others and model shared values and principles.


As organizations embrace the core concepts of open organizations, they discover that openness is necessary for success and that attempts to pursue openness will lead to 3 possible outcomes: [@OOA2017]
  
* **Greater agility:** resulting from the synergy that arises when members share a common vision and work together toward common goals.

* **Faster innovation:** because ideas from both inside and outside the organization receive more equitable consideration and rapid experimentation

* **Increased engagement:** as members clearly see connections between their particular activities and an organization's overarching values, mission, and spirit.


\BeginKnitrBlock{rmdextra}<div class="rmdextra">
## Working as a developer within an open organization {-} 

Increasingly large IT development center like Google, Oracle and Apple are becoming open organizations to encourage and value innovation. Each worker in those companies is expected to do his/her part in contributing to the development effort. However, young IT staff have a very high rate of turn over as they are often foreign to working in environments that productively focus creativity to solve issues. This mismatch was the inspiration behind a recent blog concerning the five laws that development engineers should know. [@Short2017]

1. **Forget the phrase 'I do not know':** Treat every task as an opportunity to learn and dedicate the time needed to become an expert
2. **Read the manual! :** Documentation was written for a purpose. Do not waste colleague's time.
3. **Search before asking:** Do not contribute to the problems but contribute to the solution.
4. **Anything is possible:** Anything is possible in this space with proper time, coordination, and effort. Trust by verifying new ideas 
5. **Acknowledge technical debt:** Technical debt is the result of decisions that made sense at the time someone made them but cause problems because they are not based on reality.

</div>\EndKnitrBlock{rmdextra}

### The changing nature of customers

Advances in technology have changed both the ability to produce product and the nature of markets. The internet and social media have exposed individuals to a wider range of products and vendors. This creates new desires and expectations in customers and increased competition among business. At the same time, social changes are impacting markets, particularly as youth explore new careers, lifestyles, technologies, and life goals. 


\BeginKnitrBlock{rmdextra}<div class="rmdextra">
**Changing indicators of success in Singapore**

The most common indicators of success mentioned in conversation with Singapore voters in 2000 was compare to the list compiled from conversations with Singaporen youth in 2018. [@SNYCYC2019], [@Tan2019]

|Level | Traditional success indicators | Goals of Singapore Youth|
|---:|:---------------------|:------------------|
|1 | Career / Work          |  Emotional well being  |
|2 | Finance / Money       | Personal learning / Skill development |
|3 | Studies / Degrees     | Family   |
|4 | Family             | Finance / Money |
|5 | House / Belongings   | Spirituality |

**Top 10 Life Goals Important to Singapore Youth**

| Goals | Percent |
|:-------|--------:|
| Home ownership | 70% |
| Strong family relationships | 70% |
| Learning / acquiring new skils | 62% |
| Successful career |  59% |
| Earn lots of money | 46% |
| Help less fortunate | 41% |
| Contribute to society | 40% |
| Get married | 36% |
| Have children | 35% |
| Good religious life | 31% |
  </div>\EndKnitrBlock{rmdextra}

Today's businesses need to be as versatile and diverse as the customers and markets they serve. In the past, only businesses with a large customer base were about to benefit from economies of scale. However, online services have made it possible for businesses to support both mass distribution to millions of consumers while at the same time of catering to the diverse needs of individual customers that number in the millions. 


\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">
**Discussion: Impact of changes in life goals on business**

1. How do you think changes in life goals of youth will impact the market place?

2. Based on these changes, which products would be expected to have the greatest increases or decreases in demand in the next 10 or 20 years?

3. What aspirations of Thai youth have changed in the last 10 years?

4. What impact will these changes have on the Thai economy?
</div>\EndKnitrBlock{rmddiscussion}


In addition, social media provide a forum for expressing opinions without being held accountable for the view expressed. Generally, the rewards for being liked help to regulate the web but increasing courts are given the power to litigate on defamation cases where rumors have caused damage. Nonetheless, social media continue to have an impact on Brand and Product Marketing,particularly in the following ways.

1. Word-of-mouth referrals from trusted acquaintances are powerful endorsements and attractions.
2. Customer testimonials are often decisive in purchasing decisions.
3. Community discussion of the products being developed increases trust in the company.
4. False testimonies are a problem: fakes entries attempt to oversell a product or provide complaints in an attempt to destroy the company.
5. Online searches and discussions are becoming the primary source of information for most.

\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">
Given the changes in the nature of the online market, discuss how the following approaches help to target the population to focus on those who are most likely to purchase. For each of these approaches, identify the nature of a particular market for which it would be more effective than the others.

1. Search engine ads based on topics being searched
2. Social media ads based on shared views and ideas
3. Personal profiling to drive the user experience at a website based on specific interests and preferences expressed
</div>\EndKnitrBlock{rmddiscussion}



### Changing nature of business

It is clear that the retail companies in rapid growth are those who are able to upgrade the services of the traditional storefront into a more convenient, efficient and user-friendly setting that compliments the services available online. Banks have moved their services online and to ATM to increase the convenience of handling money while lowering operating costs. Online companies like Amazon have teamed up with traditional shopping chains like Target to allows customers the opportunity to compare, touch and feel products before purchasing them either in the shop or online. Online orders can be delivered to shops to reduce shipping costs. Amazon has even integrated such high tech features as AI, face recognition and sensor to change the user shopping experience.[@Amazon2016] Technology play a critical role in all of these developments.


\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">
## New generation 7-11 (Seven Eleven) {-}

View this news clip about a new Seven Eleven outlet that opened in Pattaya with a new look that is in keeping with the era of Thailand 4.0. The store is full of sensors, monitors and systems to create a modern, futuristic, efficient shopping and eating environment complete with innovations to improve energy-saving and user convenience. Watch the video [@Suriywong2018] and list the number of ways computers have been used to change the user experience.

</div>\EndKnitrBlock{rmddiscussion}

## Online Commerce


In 2019, it is estimated that over 56% of the world's population has access to the internet. There are 26.6 billion devices and 4.39 billion people are connected to the internet. It is estimated that 3.48 billion social media users. Facebook alone has well over 2.36 billion users each month. Google answers 63,000 searches per second. This is creating unprecented levels of opportunity for marketing to huge markets world-wide. In the following graph, the number of users grows linearly while their revenues grow expotentally. [@Statista2019] 

![](10-GeneralPrinciples_files/figure-latex/unnamed-chunk-2-1.pdf)<!-- --> 

\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">
**The mobile phone market**
Review the statistics of the performance of leading mobile phone producers since 1994 [TNW2019] and discuss the following:

* What factors contributed to the fall of market leaders?
* How will President Trump's technology embargo on China effect this market?
* Is there room for new competitors in this market?

</div>\EndKnitrBlock{rmddiscussion}


### Growth of the Internet and e-commerce

As the following graph shows, the types of devices used to access the internet have also changed in the past decade.

![](10-GeneralPrinciples_files/figure-latex/unnamed-chunk-3-1.pdf)<!-- --> 


The trend has been to using mobile devices for shopping, and surfing for possibilities. There appears to be some resistance to using mobile devices to order online. 


|            | Computer | Tablet | Smartphone |
|-----------:|:-------------:|:---------:|:----------:|
| E-commerce traffic | 53.9% | 12.4% | 33.7% |
| Volume of Retail sales | 76.9% | 12.4% | 10.7% |




With the development of the world wide web in the 1990s, online commerce has been gaining  advantage over corresponding brick and mortar firms, especially for the following reasons:

1. The customer has access to more information to make better purchasing decisions
2. The customer can shop 24x7
3. The customer can track the progress of order fulfillment.
4. Customers can find and provide feedback verified through social media.
5. The functions of e-commerce can be purchased and updated to keep development costs low and to maximize economies of scale

However, the elderly are more resistant to adopt online shopping, but there is growing acceptance.

**Adoption of online shopping by age of internet user**

|Frequency | 18-29 | 30-39 | 40-49 | 50-64 | >65 |
|----------|------|-------|---------|--------|------|
|Once per week | 35% | 37% | 23% | 17% | 11% |
| Once per month | 41% | 35% | 35% | 38% | 31% |
| Once per year |  24% | 28% | 42% | 45% | 50% |
| Never | 0% | 0% |  0% | 0% | 8% |


![Business Functions of E-Commerce](images/ecommercefunctions.png)

### The e-shopping customer experience

As shown by the table below, The process of shopping for goods online has many similarities to shopping at traditional brick and mortar shops. These similarities have contributed to rapid growth in online purchases which in 2018 totaled $2,489 trillion worldwide. This represents about 8.8% of all sales worldwide. [@Saleh2019]

| Stage | Brick and Mortar | Electronic world |
|-------|------------------|------------------|
|Customer finds the store. | Ads and billboards | Google and Facebook Ads; Referrals from blogs |
|Customer shops for items of interest | Window shopping | Search the website |
|Customer searches for information on the products| Check packaging and sales staff | Internet searches and social media recommendations |
|Customer chooses items for purchase | Places them in a cart or shopping basket | Virtual transfer of items to an electronic shopping cart |
|Customer checkouts the selected items for purchase | The customer takes the shopping cart to the check out counter | The virtual cart is checked out creating a preliminary bill complete with shipping information |
|The financial institution identifies and authenticates the payer|The customer swipes a credit card or ATM card|The customer logs into to e-banking, e-payment or credit card services|
|The customer transfers funds to the vendor.| The customer signs the electronic receipt or pays cash|The customer verifies and authorizes payment|
|The financial institution send payment verification.|ATM or Credit card service authenticates the transaction or the cashier |The financial institution sends a secure memo to the e-store that payment was made.|
|The vendor sends a pick-list order to the fulfillment center.|The storekeeper faxes the order to the warehouse | The fulfillment center is notified of the order and its payment and picks the items|
|The fulfillment center sends the goods to the shipper.|The items are boxed and set aside for pickup|The items are boxed and sent to the shipper.|
|The fulfillment center updates the order status.|The customer is called to pick up his order.| The online system is updated and the customer can track its location.|
|The shipper delivers the goods.|The counter staff check the delivery items and turns them over to the customer.|The shipper delivers the goods.|
|The customer takes possession of the goods.|The customer picks up the bags and leaves|The customer signs for the goods and the tracking system is updated.|


\BeginKnitrBlock{rmddiscussion}<div class="rmddiscussion">
## Hybrid businesses

Online shopping giant Amazon has recently merged with Target a traditional department store chain. Explain why this merger is a good idea and what benefits the customer gains from it.
</div>\EndKnitrBlock{rmddiscussion}


<!--chapter:end:10-GeneralPrinciples.Rmd-->

# BUSINESS SOFTWARE MODELS

\begin{figure}
\includegraphics[width=1\linewidth]{images/jogetprocess} \caption{Leave approval using Joget}(\#fig:unnamed-chunk-1)
\end{figure}


This chapter will explore some common approaches used to model the network of interactions that occur for business processes. These models not only help to provide deeper understanding of the nature of a business process but can facilating the development of systems to collect and analyze the data associated with the process.

\newpage

## Business Process Model (BPM)

There are many good reasons for using BPMN to model business processes. [@Camunda2018a]


* **Recognized Standard:** BPMN is owned by an institution and is supported by many software products. Third party BPMN editors are available in the form of desktop apps like yEd [@YED2018] or online services like Camunda. [@Camunda2018b]
* **Simplicity:** BPMN is based on a system of graphic symbols that easy to learn.
* **Power of expression:** BPMN reduces descriptions of complex process work flows to a graphic model that is easy to grasp.
* **Implementation in IT:** BPMN was developed to support technical implementation of processes ("Process Automation"). The more important IT becomes in a company, the more helpful BPMN can be, especially when process changes can be accomplished by a simple change of line.



### A simple example

A BPMN model described a process from the beginning (a light or green circle) to the end (a dark red circle). Blocks of tasks leading to key events are specified in sequential order. 



\includegraphics[width=1\linewidth]{images/simpleBPM} 


### Notation

Naming conventions help to improve the readability of the process:

* **Tasks:**

   * shown as a rounded rectangle
   * described as a `[verb] + [object]`
   * *Acquire groceries* is better than *first take care of shopping for groceries*

* **Events:** 

  * description of milestones and achievements
  * described as something that has already happened
  * *hunger noticed* is better *when I begin to feel hungry*

### Symbols

BMP Software provide a pallette of objects to describe various aspects of a process.

![yEd BPMN Symbol Palette](images/yedpalette.png)

![Cawemo BPMN Symbol Palette](images/cawemopalette.png)

| Symbol| Description|
|:-----------:|-------------|
|![](images/start-event.png)<!-- -->  | Start Event: Start of the process chain |
|![](images/end-event.png)<!-- -->  | End Event: The end of the process chain |
|![](images/event-message-catch.png)<!-- -->  | Event Message Catch: wait for a message event |
|![](images/event-message-throw.png)<!-- -->  | Event Message Throw: sending a message event |
|![](images/task.png)<!-- -->  | Task: Work to be done |
|![](images/xor-gateway.png)<!-- -->  | XOR Gateway: choice of a action stream |
|![](images/parallel-gateway.png)<!-- -->  | Parallel Gateway: initiate simulataneous action stream |
|![](images/swimlanes.png)<!-- -->  | Swim lanes: separate the process by roles or actors |


### Sample Business Process Models

![Order Fulfillment Processing](images/orderfulfillment.png)

![Book Checkout at the Library](images/bookckout.png)

![Pizza ordering](images/pizza.png)

![Pizza shop](images/pizza2.png)


\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Correcting a bug in process flow**

Identify and correct the flaw in this process so that
the grass can be weeded, cut and watered in that order but only as required.
</div>\EndKnitrBlock{rmdexercise}

![Cutting the grass](images/cutgrass.png)


## BPMN Model Simulation

BP Model sumulators allow process designers to test their model. The general approach is to use a task generator that creates and processes tasks at rates equal to the measured performance in the work place. Data is collected to measure the rate of utilization and work flow at all stages of the model in order to identify issues like bottlenecks and irregularities in the work loads of individual employees. Simulation test are usually conducted in 3 phases: 

| Stage | Description | Purpose |
|-------|-------------|---------|
| Modeling | Simple visual model of the business process | Specify the individual roles and the business logic of the process |
| Simulation | Run task generation and execution according to measured performance | Test the model based on work place rates of service |
| Analysis | Creates a dashboard of performance indicators | Verifies process design; Identifies opportunities for process improvement; Helps to maximize employee utilization; Provides for performance-based estimates of cost |

Online services such as http://www.bpsimulator.com provide a useful means for testing a process design through the display of the model, test results dashboard and performance indicators for each stage of the process. The design is actually a translation of a BPMN model into a Event-driven Process Chain (EPC). However, additional key details are required to quantify the capacity and number of resources available. These details are saved in the attributes for each node as shown in the next section. 


### BP Simulator Model Components

The following table is adapted from the online help of BPSimulation. [@BPSSimulator2018]
 

| Object Description	|Example	|
|---------------------|----------------------|
| **Function:** Set of targeted actions to be performed by one or more executors in one role| ![](images/function.png)<!-- --> <br>\newline 	 Repair of water supply; Acceptance payment; Sending a message |
| **Execute:**	Position or role of those responsible for the execution of the function	| Motorman; Board member |  ![](images/execute.png)<!-- --> <br>\newline Name; Number of employees; Cost of using of the resource; Operating periods |
| **Resource:** Service or tools needed to perform the function	| ![](images/resource.png)<!-- --> <br>\newline Machine; tool; Software | Name; Cost of using of the resource |
| **Tasks Generator:** Generator global tasks of the business process of a certain type with a certain interval for the simulation purposes | ![](images/generator.png)<!-- --> <br>\newline Client request for a loan; Received customer complaint | Name; Operating periods; Tasks count |
| **Checkpoint:** Auxiliary element for monitoring the process parameters at different stages its execution and control of tasks flow | ![](images/checkpoint.png)<!-- --> <br>\newline Completing the approval stage; Completion of the process because of inconsistencies detected | Name; Filter tasks; EPC Elements |
| **Event:** Cause or an intangible result of a function |  ![](images/event.png)<!-- -->  <br>\newline  Client's visit; An error was detected |
| **Regulate:** Regulate document directly related to the order, conditions or results of the function |  ![](images/regulate.png)<!-- --> <br>\newline  Manuals; Federal Law |
|	**Input:** Material or information necessary to perform the function |  ![](images/input.png)<!-- -->  <br>\newline Form; Statement |
| **Output:** Material or information generated or acquired additional properties as a result of the function | ![](images/output.png)<!-- -->  <br>\newline  Part; Conclusion |
| **Procedure:**	Set of performance features for a particular purpose | ![](images/procedure.png)<!-- -->  <br>\newline Applications processing; Approval of documentation |
| **Comment:** Auxiliary element model for clarifications or comments| ![](images/comment.png)<!-- -->  <br>\newline	 Temporary condition; Proposed improvements |

### Linking objects together

All objects in the model should be at least one link to another object. To create a link between objects, you must first double-click on the object - the source of links, and then click on the object - the recipient, link will be created with an arrow on the side of the second object. Link means a direct impact or relationship of one object from another. Not all objects can be linked to each other. The group of objects: Tasks Generator, Function, Events, Procedure and Check Point can be suppliers (predecessors) or consumers (followers) of each other. Other objects only as the impact on function, as shown below the diagram:

![Linking of Objects](images/exmodeling5.png)


With this extra data it is possible to simulate a day at work. The statistics collected help to pinpoint bottlenecks and limiting resources. The system provides a dashboard to summarize the results.


![Dashboard of Test Results](images/bpsim2.png)

The model uses generators to simulate the volume of the demand for needs. Data comes from the functions and key check points of the model that monitor the workflow that passes these nodes. The executor nodes determine the capacity of the system. Performance is varied by changing the number of individuals in the role of executors. 

![Performance indicators](images/bpsim3.png)


### An example: A Petrol Station**

Starting with the BPMN of a simple model of the processes behind getting gas at the petrol station.

![The Gas Station](images/gaspump.png)
 
results in a simulated model within the BPSimulator.

![Getting Fuel Simulatation](images/gaspumpsim.png)
 
The simulation was run in the scenario of only have one cashier, one attendant, one gasohol pump, one diesel pump and 290 customers who arrive. 

| Starting | Ending | Number | Hourly Rate |
|----------|--------|--------|------------|
| 6:00  | 8:59  | 90 | 30 |
| 9:00  | 14:59 | 90 | 15 |
| 15:00 | 18:59 | 90 | 25 |
| 19:00 | 20:00 | 20 | 10 |

As shown in the dashboard, the average queue is 16 min. 
 
![Dashboard for Getting Fuel](images/gaspumpdash.png)

\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: Improving performance of a petrol station**

Using the sample model of a petrol station, determine a proper mix of men and machines that will reduce the queue time to less than 2 mins at the minimum cost.
 </div>\EndKnitrBlock{rmdexercise}

## Enterprise Resource (ERP)

The purpose of Enterprise Resource Planning (ERP) is to harness business data in a way that allows integrated management of core business processes. This business-management software is typically designed as a suite of integrated applications which collect, store, manage, and interpret data from a wide range of business activities. By managing the critical information of all business processes, ERP provides opportunities to support data-driven management decisions is such areas as cash flow,  resources usage, inventory of raw materials, and the status of business commitments such as project milestones, orders fulfilment, purchase order payments, and staff compensation. The system facilitates the sharing of data across divisions of the business, such as manufacturing, purchasing, sales, accounting, and human resources.

### Building Blocks

![ODOO ERP Modules](images/odooerp.png) 

### ProjectFedena.com: an example of an ERP 

Project Fedena was conceived as a project to easily manage all campus records of schools and campuses and was implemented as a ERP system written in Ruby on Rails. The project was originally developed at Foradian Technologies but is now maintained by the open source community.[^Fedena]

[^Fedena]: The Fedena source code can be found online at  https://github.com/projectfedena/fedena

![Business System Software Development](images/softwaresystems.png)

### The MVC Framework

* **Model:** Defines the structure and nature of data used by the system  includes permissions, validation and list of field attributes.
* **View:** Renders outputs according to the limitations of the media such as web, email, sms, mobile, graphic image, json and xml.
* **Controller:** Parses the user request into data queries and passes the response to the appropriate view. User requests are generally variants of the standard types of database functions: create, show, edit, update and delete.
* **Helpers:** calculates basic conversions including support for foreign languages.

![MVC Communications](images/mvc.png)

The Model implements the ERD. This is example comes from the Subject Model class definition.


```ruby
belongs_to :batch
belongs_to :elective_group
has_many :timetable_entries,:foreign_key=>'subject_id'
has_many :employees_subjects
has_many :employees ,:through => :employees_subjects
has_many :students_subjects
has_many :students, :through => :students_subjects
has_many :grouped_exam_reports
has_and_belongs_to_many_with_deferred_save :fa_groups
validates_presence_of :name, :max_weekly_classes, :code,:batch_id
validates_presence_of :credit_hours,
   :if=>:check_grade_type
validates_numericality_of :max_weekly_classes
validates_numericality_of :amount,:allow_nil => true
validates_uniqueness_of :code, :case_sensitive => false
```

### Unit testing

This is done through a series of Assertions that tried against the functions of a class:


```ruby
class SimpleNumber

   def initialize(num)
       raise unless num.is_a?(Numeric)
       @x = num
   end

   def add(y)
      @x + y
   end

   def multiply(y)
       @x * y
   end
end
```


```ruby
require_relative "simple_number"
require "test/unit"
	 
class TestSimpleNumber < Test::Unit::TestCase
	 
  def test_simple
	assert_equal(4, SimpleNumber.new(2).add(2) )
	assert_equal(6, SimpleNumber.new(2).multiply(3) )
  end	 
end
```

### Available assertions:

| Assertion | Description |
|-----------|-------------|
| `assert( boolean, [message] )`	| True if boolean |
| `assert_equal( expected, actual, [message] )` |	True if expected == actual |
| `assert_not_equal( expected, actual, [message] )` |	True if expected != actual |
| `assert_match( pattern, string, [message] )` |	True if string =~ pattern |
| `assert_no_match( pattern, string, [message] )` |	True if string !~ pattern |
| `assert_nil( object, [message] )` |	True if object == nil |
| `assert_not_nil( object, [message] )` |	True if object != nil |
| `assert_in_delta( expected_float, actual_float, delta, [message] )` |	True if (actual_float - expected_float).abs <= delta |
| `assert_instance_of( class, object, [message] )` |	True if object.class == class |
| `assert_kind_of( class, object, [message] )` |	True if object.kind_of?(class) |
| `assert_same( expected, actual, [message])`  |	True if actual.equal?( expected ).|
| `assert_not_same( expected, actual, [message] )` |	True if not actual.equal?( expected ).|
| `assert_raise( Exception,... ) {block}` |	True if the block raises one of the listed exceptions. |
| `assert_nothing_raised( Exception,...) {block}` |	True if the block does not raise one of the listed exceptions. |
| `assert_throws( expected_symbol, [message] ) {block}` | |
| `assert_nothing_thrown( [message] ) {block}` |	True if the block throws (or doesn't) the expected_symbol. |
| `assert_respond_to( object, method, [message] )` |	True if the object can respond to the given method. |
| `assert_send( send_array, [message] )` |	True if the method sent to the object with the given arguments return true. |
| `assert_operator( object1, operator, object2, [message] )`	| Compares the two objects with the given operator, passes if true |	
	
## Behavior driven Development

Advantages:

* **Single source of truth:** Specifications, tests and documentation are in the same document.
* **Living documentation:** Because they're automatically tested by Cucumber, your specifications are always bang up-to-date.
* **Customer focus:** Cucumber helps business and IT collaborate to build a shared understanding of the business goals

[@Cucumber2019a] supports Behaviour-Driven Development(BDD) by reading executable specifications written in plain text and validating that the software does what those specifications say. The specifications consists of multiple examples, or scenarios written in Gherkin. [@Cucumber2019b]


The primary keywords are:

* `Feature`
* `Example` (`Scenario` and `Scenario Outline` are synonyms)
* Steps: `Given`, `When`, `Then`, `And`, `But`
* `Background`
* `Combinations` (Examples is a synonum)

* `"..."` (Doc Strings)
* `|` (Data Tables)
* `@` (Tags)
* `#` (Comments)

Examples follow this same pattern:

* Describe an initial context (Given steps)
* Describe an event (When steps)
* Describe an expected outcome (Then steps)


### A working example of specs in Cucumber



```ruby
Feature: A simple banking program
        
Background:
   Given a customer named "DrBob"          
   And I have logged in as "DrBob"    

   Scenario: Balance checking   
   Given my account has a balance of $430   
   Then my account should show a balance of $430   
           
   Scenario: Account deposit   
   Given my account has a balance of $400   
   When I deposit $30   
   Then my account should show a balance of $430   
         
   Scenario: Account withdraw   
   Given my account has a balance of $500
   When I withdraw $70
   Then my account should show a balance of $430     
     	 
   Scenario Outline: deposits   
   Given there are <start> dollars in the account   
   When I deposit <added> dollars   
   Then I should have <left> dollars   
     
   Examples:    
     | start | added | left |   
     |    12 |   5   |    7 |   
     |    20 |   5   |   15 |   
```


<!--chapter:end:20-BusinessSoftwareModels.Rmd-->

# BUSINESS SOFTWARE SYSTEMS


\begin{center}\includegraphics[width=0.9\linewidth]{images/ebusiness} \end{center}

This chapter will explore the network of frameworks, systems and applications that comprize the fabric of e-Business. In this study, each software component will be introduced by its context, requirements and examples of current open-source solutions.

\newpage   

## Online Store 

An online store attempts to match or exceed the level of customer support provided in brick and mortar stores. However, the personal distance and anonymity of the internet makes this goal harder to achieve. However, online stores like Amazon, Lazada and Alibaba owe their success to their ability to create trust among their community of buyers and sellers. These companies act as arbitrators between customers and vendors, reducing the risk of doing business between unkonwn parties. B ecause trust is so essential to business transactions, many internet shops began as product listings on one of these large marketing sysems, or as a online service to the customers of their brick and mortar chains.


### Stages in Customer Purchasing Decisions

Marketers have long studied the process and requirements of customers before, during and after making a purchase. In a market place that abound in choices, customers must choose between the multiple alternatives. Shopping whether in the physical world or online is at best weak attempt at making a rational decision between the choices, because complete analysis needed to identify the true optimal decision is increditably complex. [@Simon1955] However, the urgency of the need drives the buyer to settle for an apparent good choice. However, the internet changes this by providing more information on which to base a rational decision. [@Dewey1910] observed 5 stages in a purchasing decision. A sixth stage has been added here to cover the financial transaction constraints imposed by online monetary systems.


![Stages in customer purchase decision making](images/purchase.png)




### Business Processes to Support Shoppers 

![Business support of shoppers](images/onlinesales.png)

### Steps of check out and order fulfillment

* Login: links to shopping cart and history
  * Establish an account with the vendor
  * Add items to the shopping cart

* Shopping cart check out
  * Conducts an inventory check of items in shopping cart
  * Determines the mode of shipping
  * Calculates bill

* Renumeration via bank transfer
  * Determines the method of payment
  * Login onto financial service
  * Confirms the transaction
  * SMS validation code to telephone
  * Conducts and records the transaction
  * Send payment confirmation to the vendor


\BeginKnitrBlock{rmdextra}<div class="rmdextra">
** Online Payment Methods Used in Thailand

Credit card and bank fraud so common in Thailand that most banks and credit card companies do not provide the quarantees for purchases and other consumer protection that conhsumers in other countries enjoy. In essence, Thai financial firms assume no risk and carry no insuraNCE against bank and credit card fraud. Despite the barriers against credit card usage, there are online payment systems used for e-commerce in Thailand as shown in the following table.

| Type and example | Benefits | Drawbacks |
|---------------|----------------|------------------|
| **Credit card**| Convenient, international standard | |
| **Bank transfer** | | |
| **ATM** | | |
| **Online payment company:** Paypal, Alipay | | |
| **Payment service** 7-Eleven, Thailand Postal Service | | The payment collection service charges the vendor a high commission and their systems could be hacked. |
| **Mobile phone credits** AIS, TOT| | Reimbursement depends on the policies of the phone company; Stolen phone transactions may have to be refunded. |
| **Cash on delivery:** Lazada | | The receiver can refuse the delivery and the goods are returned damaged in shipment |
| **Cryptocurrency:** BitCoin | | The market value is not pegged to that of physical currency |
</div>\EndKnitrBlock{rmdextra}

* Send a shipping request to the Fulfillment Center
  * Pick list and shipping manifest
  * Print shipping label
  * Send pick up order to delivery service

* Shipping 
  * Record shipment pickup
  * Register the shipment
  * Track the shipment
  * Record the delivery
  
## Customer Relations Management

### Post sales service

* Unpacking instructions
* Installation instructions
* User instructions
* Troubleshooting guide
* Technical support hotline
* Service center locations

## Measuring the effectiveness of websites


## Human Resources Management

### Assessing Personal Temperment

Every person is unique and represents a unique set of strengths and weaknesses. At the same time the every job requires different set of characteristics. The role of HR is to attempt to collectin information meant to measure and ascertain how suited  an applicant is for a job opening. In theory the goal is to play the right person in the job. However as implied by the following word cloud, fitness of applicants for a job has many dimensions and is hard to measure accurately.

![Characteristics of a Good Employee](images/wordcloud.png)


\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: Employee selection criteria**

The following are redacted from ads for IT jobs in Chiang Mai posted on LinkedIn in 2018. For each of the job descriptions propose the top 4 characteristics that should be used to identify a suitable candidate:
 
1. **Software Developer:** At XXX, we pursue greatness for our clients while reaching our own potential as well. To achieve this, we are building a team of people who can work independently, who push themselves to find creative solutions, who collaborate naturally, and who, above all, value doing good work. We are looking for new members for our team who can craft web and mobile applications that fit inside a larger communications, business, and product strategies. We focus on the problems to be solved instead of lists of functional requirements. The applications we develop are always part of larger strategy and help us foster close partnerships with our clients and the users of our applications. Together we work to amplify the effectiveness of our clients and accelerate their growth.
2. **Data scientist:** At YYY, we work closely with business users to identify business problems and develop solutions using data science techniques. To this end, we design and implement data models to explain and solve critical problems using such techniques as data mining, statistical modeling, and machine learning. We are looking for a worker who can provide insightful visualization and explanation of trends in client data and recommend the next course of action to be taken by decision makers and their colleagues.
3. **Robotics Engineer:** We are seeking a Robotic Engineer with technical leadership expertise to optimize the expansion of our paint robot program by improving the efficiency, productivity and quality of our program. You will be responsible for program operation, fault recovery procedures, troubleshooting and all around leadership of a state-of-the-art program to triple the paint volume of our previous model. In addition, you will contribute to improvements in Robot Safety, graphic user interface, electrostatic paint application, robot pathing, robotic fluid delivery systems, and the training of the next generation of program operators.
4. **Solutions Architect:** At WWW, we are looking for someone with a passion to help customers design large distributed systems using the world’s most advanced cloud computing technologies. This job requires someone who can communicate, consult, and provide leadership while helping to guide major projects to success. We are hiring a Solutions Architect who can think strategically about business, product, and technical challenges and who will own technical engagement with customers on projects, working cross-organizationally to facilitate adoption and use of the cloud platform. At the same time, the job will involve developing a deep expertise in the cloud technologies and contributing to the know-how in the construction of applications and services on the cloud platform.
</div>\EndKnitrBlock{rmdexercise}

#### Belbin Team Roles

Research showed that the most successful teams were made up of a diverse mix of behaviours; they had access to all nine Belbin Team Roles. A Team Role was defined by Dr Meredith Belbin as "A tendency to behave, contribute and interrelate with others in a particular way". The value of Belbin Team Role theory lies in enabling an individual or team to benefit from self knowledge and adjust according to the demands being made by the external situation. [@Belbin2010] The concept was derived from a study of factors leading to success or failure of teams competing in
Business Games at Henley Management College, England. Managers taking part in the exercise
were given a battery of psychometric tests and put into teams of varying composition. As time
progressed different clusters of behaviour were identified as underlying the success of the teams. These successful clusters of behaviour were then given names. Hence the emergence of nine Team Roles shown with the distribution among British managers: [@Fisher1998]


| Roles | | Belbin Types | |
|:------------------|:---------------:|:------:|:------:|
|Action-oriented: | Shaper | Implementer  | Completer Finisher|
| | 2.3% | 11.4% | 3.6% |
|People-oriented: | Co-ordinator | Teamworker | Resource Investigator|
|  | 26.2% | 18.2% | 33.2% |
|Thinking-oriented: | Plant |Monitor  Evaluator | Specialist |
|   |  3.7% |  0.5% | 0.8% |


This doesn't mean that every team requires nine people. Most people will have two or three Team Roles that they are most comfortable with. Team Roles develop and mature. These may change with experience and conscious attention. Different Team Roles may come to the fore in response to the needs of particular situations.

| Role Description | Strengths |  Allowable weaknesses | Concerns |
|:---------------|:------------------|:--------------|:----------------|
| **Resource Investigator:**  Uses their inquisitive nature to find ideas to bring back to the team. | Outgoing, enthusiastic. Explores opportunities and develops contacts. | Might be over-optimistic, and can lose interest once the initial enthusiasm has passed.| They might forget to follow up on a lead. | 
| **Teamworker:** Helps the team to gel, using their  versatility to identify the work required and complete it on behalf of the team.| Co-operative, perceptive and diplomatic. Listens and averts friction. | Can be indecisive in crunch situations and tends to avoid  confrontation.| They might hesitate to make unpopular decisions. |
| **Co-ordinator:** Needed to focus on the team's objectives, draw out team members and delegate work appropriately.| Mature, confident, identifies talent. Clarifies goals. | Can be seen as manipulative and might offload their own share of the work. |  They can over-delegate, leaving themselves little work to do. |
| **Plant:** Tends to be highly creative and good at solving problems in unconventional ways. | Creative, imaginative, free-thinking, generates  ideas and solves difficult problems. | Might ignore incidentals, and may be too preoccupied to communicate effectively. | They could be absent-minded and forgetful. |
| **Monitor Evaluator:** Provides a logical eye, making impartial judgements where required  and weighs up the team's options   | Sober, strategic and discerning. Sees all options and judges accurately. | Sometimes lacks the drive in a dispassionate way. and ability to inspire others and can be  overly critical.| They could be slow to come to decisions. |
| **Specialist:** Brings in-depth knowledge of a key area to the team. | Single-minded, self-starting  and dedicated. They provide specialist knowledge and skills.| Tends to contribute on a narrow front and can dwell on the technicalities.| They can overload colleagues with  technical information. |
| **Shaper:** Provides the necessary drive  to ensure that the team keeps moving and does not lose focus or momentum.| Challenging, dynamic, thrives on pressure. Has the drive and courage to overcome  obstacles.| Can be prone to  provocation, and may sometimes offend people's feelings.|  They could risk becoming aggressive and bad-humoured in their attempts to get things done. |
| **Implementer:** Needed to plan a workable strategy and carry it out as efficiently as possible.| Practical, reliable, efficient. Turns ideas into actions and organises work that needs to be done.| Can be a bit inflexible and slow to respond to new possibilities.| They might be slow to relinquish their plans in favour of positive changes.|
| **Completer Finisher:** Most effectively used at the end of tasks to polish and scrutinise the work for errors, subjecting it to the highest standards of quality control.| Painstaking, conscientious, anxious. Searches out errors. Polishes and perfects. |  Can be inclined to worry unduly, and reluctant to delegate. | They could be  accused of taking their   perfectionism to extremes. |

#### Big 5 Behavioral Types

| Behavioral Characteristic | Low end | High end |
|----------------------|--------------|----------|
| **Openness to experience:** Appreciation for art, emotion, adventure, unusual ideas curiosity, variety of experience and intellectual curiosity, creativity and a preference for novelty and variety.| consistent, cautious (Accountants) | inventive, curious(Artists) |
| **Conscientiousness:** A tendency to be organized and dependable, show self-discipline, act dutifully, aim for achievement, and prefer planned rather than spontaneous behavior.  |  easy-going, careless, sloppy. (Graffiti artist)| efficient, organized, stubborn. (Engraver) |
| **Extraversion:** Energy, positive emotions, surgency, assertiveness, sociability and the tendency to seek stimulation in the company of others, talkativeness and is often perceived as attention-seeking and domineering. | solitary, reserved, shy, introvert. (Hermit) | outgoing, energetic, boisterous, extravert. (Cheerleader) |
| **Agreeableness:** A tendency to be compassionate and cooperative rather than suspicious and antagonistic towards others. It related to a trusting and helpful nature. | challenging, detached, rigid. (Prosecutor)  | friendly, compassionate, helpful. (Social worker) |
| **Neuroticism:** Neuroticism identifies certain people who are more prone to psychological stress and a tendency to experience unpleasant emotions easily.| confident|secure, cool (Air traffic controller) |sensitive, nervous, explosive. (Drug addict)|

#### Myers Briggs Test

The 16 personality types that were developed by Isabel Briggs Myers and Katharine Cook Briggs, which was built on the work of Carl Jung in the early 1900s. Based on the 4 dimensions of Carl Jung's theory of personality types:

| Dimension | Extremes |
|:-------------|:------------|
|Energizes | Extroversion (E) vs Internal (I)|
|Perceives information | Sensing (S) vs Intuitive (N)|
|Decision making| Thinking (T) vs Feeling (F)|
|World view | Judging (J) vs Perceiving (P)|
 
Myers Briggs Test has been administered to a large number of people helping to validate the value of this instrument for a number of applications. Generally successful workers tend to gravitate to specific careers based on their personality profile as shown in the next sections. [@Tieger2014]

 
 
##### Analysts:

* **INTJ** (2.1%) -  The Mastermind/The Scientist – Independent, original, analytical, and determined with an exceptional ability to turn theories into solid plans of action. Creative perfectionists who prefer to do things their own way, INTJs perform well in non-social roles that require them to think theoretically. Common careers: Investment banker, Personal financial advisor, Software developer, Economist, Executive

* **INTP** (3.3%) - The Thinker – Logical, original, creative thinkers. Can become very excited about theories and ideas. Independent and creative problem-solvers, INTPs gravitate toward roles that require them to be theoretical and precise. Common careers - Computer programmer, software designer, Financial analyst, Architect, College professor, Economist

* **ENTJ** (1.8%) - The Commander – Assertive and outspoken - they are driven to lead. Excellent ability to understand difficult organizational problems and create solid solutions. Natural leaders who are logical, analytical, and good strategic planners, ENTJs gravitate toward authoritarian roles that require them to be organized and efficient. Common careers: Executive, Lawyer, Market research analyst, Management consultant, Venture capitalist

* **ENTP** (3.2%) - The Debater – Creative, resourceful, and intellectually quick. Good at a broad range of things. Enterprising creative people who enjoy new challenges, ENTPs excel in risky roles that require them to be persistent and non-conformist.  Common careers: Entrepreneur, Real estate developer, Advertising creative director, Marketing director, Politician/political consultant

##### Diplomats:

* **INFJ** (1.5%) - The Counselor/The Protector – Quietly forceful, original, and sensitive. Tend to stick to things until they are done. Thoughtful, creative people driven by firm principles and personal integrity, INFJs do well in behind-the-scenes roles that require them to communicate on a personal level. Common careers: Therapist/counsellor, Social worker, HR diversity manager, Organization development consultant, Customer relations manager

* **INFP** (4.4%) - The Idealist –  Quiet, reflective, and idealistic. Interested in serving humanity. Sensitive idealists motivated by their deeper personal values, INFPs excel in roles that require them to be compassionate and adaptable. Common careers: Graphic designer, Psychologist/therapist, Writer/editor, Physical therapist, HR development trainer

* **ENFJ** (2.5%) - The Giver – Popular and sensitive, with outstanding people skills. Externally focused, with real concern for how others think and feel. People-lovers who are energetic, articulate, and diplomatic, ENFJs excel in cooperative roles that require them to be expressive and logical. Common careers: Advertising executive, Public relations specialist, Corporate coach/trainer, Sales manager, Employment/HR specialist 

* **ENFP** (8.1%) - The Champion/The Inspirer – Enthusiastic, idealistic, and creative. Able to do almost anything that interests them. Curious and confident creative types who see possibilities everywhere, ENFPs perform well in expressive roles that require them to be alert and communicative. Common careers: Journalist, Advertising creative director, Consultant, Restaurateur, Event planner


##### Sentinels:

* **ISTJ** (11.6%) - The Inspector/The Duty Fulfiller  - Serious and quiet, interested in security and peaceful living. Hard workers who value their responsibilities and commitments, ISTJs excel in behind-the-scenes roles that require them to be reliable. Common careers: Auditor, Accountant, Chief financial officer, Web development engineer, Government employee


* **ISFJ** (13.8%) - The Nurturer/ – Quiet, kind, and conscientious, puts the needs of others above self-interest. Modest and determined workers who enjoy helping others, ISFJs do well in roles that require them to provide services to others without being in a position of authority. Common careers: Dentist, Elementary school teacher, Librarian, Franchise owner, Customer service representative

* **ESTJ** (8.7%) - The Supervisor/The Guardian –  Practical, traditional, and organized. Likely to be athletic. Realists who are quick to make practical decisions, ESTJs perform well in social roles that require them to lead. Common careers: Insurance sales agent, Pharmacist, Lawyer, Judge, Project manager

* **ESFJ** (12.3%) - The Provider/The Caregiver – Warm-hearted, popular, and conscientious. Tend to put the needs of others over self-interest. Gregarious traditionalists motivated to help others, ESFJs gravitate toward social roles that require them to care for the well-being of others. Common careers: Sales representative, Nurse/healthcare worker, Social worker, Public relations account executive, Loan officer


##### Explorers:

* **ISTP** (5.4%) - The Craftsman / The Mechanic - Quiet and reserved, interested in how and why things work. Straightforward and honest people who prefer action to conversation, ISTPs perform well in utilitarian roles that require them to make use of tools. Common careers: Civil engineer, Economist, Pilot, Data communications analysis, Emergency room physician

* **ISFP** (8.8%)- The Composer/The Artist – Quiet, serious, sensitive and kind, avoids conflict. Warm and sensitive types who like to help people in tangible ways, ISFPs do well in roles that require them to be sympathetic and attentive. Common careers: Fashion designer, Physical therapist, Massage therapist, Landscape architect, Storekeeper

* **ESTP** (4.3%) - The Doer – Friendly, adaptable, action-oriented. focused on immediate results. Pragmatists who love excitement and excel in a crisis, ESTPs excel in high-stakes roles that require them to be resourceful.  Common careers: Detective, Banker, Investor, Entertainment agent, Sports coach
 
* **ESFP** (8.5%) - The Performer – People-oriented and fun-loving, they make things more fun for others by their enjoyment. Lively and playful people who value common sense, ESFPs gravitate toward roles that require them to be expressive and interact with others.  Common careers: Child welfare counselor, Primary care physician, Actor, Interior designer, Environmental scientist

#### Hofstede survey on cultural dimensions

By studing expat workers work preformance in large multinational corporations, Hofstede was able to identify key cultural differences in the way people approach work. [@Hofstede2010] 

* Power distance: perceived ability to make a difference
* Individualism: individual vs collective: tendency to think in terms of I vs We.
* Gender balance: masculinity vs femininity
* Advoidance of Uncertianty: tolerance of risk
* Long term orientation: perception of urgency  
* Indulgences vs restraint: attitude towards acquired wealth

### Performance appraisal

 
Performance Appraisal is the systematic evaluation of the performance of employees in order to understand the abilities of a person for further growth and development.  [@MSG2018] Performance appraisal is generally done in systematic ways which are as follows:

* The supervisors measure the pay of employees and compare it with targets and plans.
* The supervisor analyses the factors behind work performances of employees.
* The employers are in position to guide the employees for a better performance.

### Objectives of Performance Appraisal

Performance Appraisal is done with following objectives in mind:

* To maintain records in order to determine compensation packages, wage structure, salaries raises, etc.
* To identify the strengths and weaknesses of employees to place right men on right job.
* To maintain and assess the potential present in a person for further growth and development.
* To provide a feedback to employees regarding their performance and related status.
* To provide a feedback to employees regarding their performance and related status.
* It serves as a basis for influencing working habits of the employees.
* To review and retain the promotional and other training programmes.

#### Advantages of Performance Appraisal

It is said that performance appraisal is an investment for the company which can be justified by following advantages:

1. **Promotion:** Performance Appraisal helps the supervisors to chalk out the promotion programmes for efficient employees. In this regards, inefficient workers can be dismissed or demoted in case.
2. **Compensation:** Performance Appraisal helps in chalking out compensation packages for employees. Merit rating is possible through performance appraisal. Performance Appraisal tries to give worth to a performance. Compensation packages which includes bonus, high salary rates, extra benefits, allowances and pre-requisites are dependent on performance appraisal. The criteria should be merit rather than seniority.
3. **Employees Development:** The systematic procedure of performance appraisal helps the supervisors to frame training policies and programmes. It helps to analyse strengths and weaknesses of employees so that new jobs can be designed for efficient employees. It also helps in framing future development programmes.
4. **Selection Validation:** Performance Appraisal helps the supervisors to understand the validity and importance of the selection procedure. The supervisors come to know the validity and thereby the strengths and weaknesses of selection procedure. Future changes in selection methods can be made in this regard.
5. **Communication:** Because communication between employees and employers effects morale and productivity, effective performance appraisal facilitates will stimulate  communication that will impact a business in the following ways:

    * The employers can better understand and accept the skills, nature and needs of subordinates.
    * The subordinates can also better understand the workplace ethos as they grow in their trust and confidence in their superiors.
    * Appraisals provide 2-way feedback that helps to build and maintain cordial and congenial labour-management relationship.
    * As a shared experience across the workplace, appraisals develop the spirit of work and help boost the morale and esprit du cours of the employees.

6. **Motivation:** Performance appraisal serves as a motivation tool. Through evaluating performance of employees, a person’s efficiency can be determined if the targets are achieved. This very well motivates a person for better job and helps him to improve his performance in the future.

### HR System software

HR data generally holds a wealth of information that can be used to predict employee retention, turnover and satisfaction. However this information must be mined from the data by applying data science and machine learning techniques.
While numerous commercial HR systems exist in the market placethat have been developed. OrangeHRM ^[**Home page:** https://www.orangehrm.com/; **Demo:** https://orangehrm-demo-6x.orangehrmlive.com/] is an open-source product tha provide the basic functions for addressing the following issues:

* Employee retention
* Job performace appraisal and incentives
* Employee development
* Job-Employee fit: Right person for the job
* Payroll, benefits and overtime

 
\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: Product Review: OrangeHRM Human Resource Management System 

1. Login as admin to the online demo and determine the amount of information that is management by this system by answering the following for the Webmaster of the corporation:

    * Name and name of spouse/children
    * Name of supervisor
    * Level of salary
    * Results of last appraisal

2. Login as employee and determine what information is available to employees and what updates they can make online.
3. What are the benefits and dangers of having such information online?
</div>\EndKnitrBlock{rmdexercise}

As the data currently help by HR Managment systems is subjected to analysis by AI and machine learning, it is expected that HR will become far more effective in the follow areas:

* Determining which employees are most likely to leave
* Match employees to jobs within a company
* Increasing the collaborating between online and onsite employees
* Integrating robots into the workplace that fully support humans and robots working side by side. 
* Increasing the diversity and inclusiveness of the organization

\BeginKnitrBlock{rmdexercise}<div class="rmdexercise">
**Exercise: Prediction of Employee Churn**
 
This exercise was adapted from a 2017 Kaggle Competition. [@Kaggle2017] Apply trend line analysis in Excel on the data in the training set to develop a model to predict the employees in the test set who are most likely to resign. The following files are provided to you.

* HR.csv - the training set
* HR_evaluate.csv - the test set

Data fields

* id - Anonymous ID number for each employee
* satisfaction - Employee satisfaction level
* last_evaluation - Last evaluation score
* number_project - Number of projects assigned to
* average_monthly_hour - Average monthly hours worked
* time_spend_company - Time spent at the company
* Work_accident - (1= Yes, 0 = No) - Whether they have had a work accident
* left - Whether or not employee left company (1 = Yes, 0 = No) 
* promotion_last_5year - (1 = Yes, 0 = No) - Whether they have had a promotion in the last 5 years
* sales - Department name (not just sales)
* salary - Salary category
</div>\EndKnitrBlock{rmdexercise}

## Operations Management 

### Measures of Association Rules

$$Productivity = \frac{Output}{Input} $$

$$Efficiency = \frac{100 \times ActualOutput}{StandardOutput}$$

$$Support(X,Y) = \frac{t_{(X,Y)}}{t_{all}}$$

$$Confidence(X,Y) = \frac{Support(X,Y)}{Support(X)} $$

$$Lift = \frac{Support(X,Y)}{Support(X) \times Support(Y)}$$

$$Conviction = \frac{1 - Support(Y)}{1 - Confidence(X,Y)}$$

$$\begin{equation}
Leverage = Support(X,Y) - Support(X)\times Support(Y)  (\#eq:leverage)
\end{equation}$$

This is Equation  \@ref(eq:leverage)


### Logistics

* Crazy processing machine 2018 | Hydroponics Factory
https://www.youtube.com/watch?v=7sxrLxr6VpA

* Krispy Kreme Donut Machine
https://www.youtube.com/watch?v=Rn0XsW2l4d4

* Fulfillment Center:
How Amazon Receives Your Inventory https://www.youtube.com/watch?v=dAXdeqcHBp4

The Gigantic Grocery Warehouses Built like Living Organisms https://www.youtube.com/watch?v=_psDSX-7P1s
 

<!--chapter:end:30-BusinessSoftwareSystems.Rmd-->

# EMERGING TECHNOLOGIES


\begin{center}\includegraphics[width=0.9\linewidth]{images/computer1280} \end{center}

This chapter will explore emerging trends that are impacting the way e-Business is developing and practised.

\newpage

## Business Intelligence and Data Analytics

* Data dashboarding
* Big Data
* Data Science
* Machine learning and AI

## Blockchain

### Cyptocurrencies

### Other applications of block chains

* CryptoKitties: Tagging unique parameters for art work: ^[Available online at https://www.cryptokitties.com]

![CryptoKitties](images/cryptokitties.png)

\BeginKnitrBlock{rmdextra}<div class="rmdextra">
**The Crazy Expensive CrytoKitties**
 
CryptoKitties is a "blockchain game". It involves collecting, trading, and breeding CryptoKitties with "cattributes." These kitties are actually tokens stored on a blockchain. A CryptoKitty is a unique digital asset that is stored as a token stored on the Ethereum blockchain.[@TCT2018] Each CryptoKitty has a combination of cattributes that make it unique. These features come together to give each CryptoKitty a unique look. Some CryptoKitties have mewtations, which are rare cattributes. These CryptoKitties can be traded, sold, and purchased like any other digital asset. They can also be bred with another CryptoKitty to create a new kitty.

On the surface, CryptoKitties is just a game that involves collecting digital cat pictures, breeding them to make new cat pictures, and trading cat pictures. The first CryptoKitty was born on December 2, 2017. Since then, a new Generation 0 cat was born every fifteen minutes. In November 2018 (one year after the game launch), the last Generation 0 cat was born. All new kitties will be produced through breeding after that point. As collectibles, they have rarity: each CryptoKitty is unique. The most expensive CryptoKitty ever purchased sold for USD \$110,707 to a willing buyer. People have spent over USD \$24 million on CryptoKitties, and the project has received USD \$12 million in venture capital funding. [@Hoffman2018]
</div>\EndKnitrBlock{rmdextra}

* Land deeds

## Open Source Solutions

In 1983, Robert Stallman wrote the core concepts that would eventually become the GNU Manifesto as an means to initiate a movement committed to creating and distribution open and free software. [@Stallman1985] The Free Software Foundation grew out of these developments and granted users the following four freedoms, many of which require access to the source code.


* **Freedom 0:** The freedom to run the program, for any purpose.
* **Freedom 1:** The freedom to study how the program works, and adapt it to your needs. Access to the source code is a precondition for this.  Access to the source code is a precondition for this.
* **Freedom 2:** The freedom to redistribute copies so you can help your neighbor.
* **Freedom 3:** The freedom to improve the program, and release your improvements to the public, so that the whole community benefits. Access to the source code is a precondition for this. [@FSF2018]

## Thailand 4.0

Thailand 4.0 is an economic model that aims to unlock the country from several economic challenges resulting from past economic development models which place emphasis on agriculture (Thailand 1.0), light industry (Thailand 2.0), and advanced industry (Thailand 3.0). These challenges include economic conditions that create 3 traps:

* **A middle income trap:** where opportunities for wealth accumulation is restricted.
* **An inequality trap:** where wealth is not acquired fairly based on gender, ethnical background and other socio-political issues.
* **An imbalanced trap:** where the gap between the rich and the poor widens especially based on geographic location and  urban vs rural settings.

The Thai government has committed itself to invest into several areas of innovation that would stimulate the economy, such as robotics/internet of things, agriculture/biotechnology, biofuels/biochemicals and smart electronics. [@TMC2016] The intention is to create the environment for transformation and resulting sea-changes in such areas as farming, business development, skilled labor and technological development. [@RTE2016] The four objectives of this strategy are listed below:

1. **Economic Prosperity:** to create a value-based economy that is driven by innovation, technology and creativity. The model aims to increase Research and Development (R&D) expenditure to 4% of GDP, increase economic growth rate to full capacity rate of 5-6% within 5 years, and increase national income per capita from 5,470 USD in 2014 to 15,000 USD by 2032.
2. **Social Well-being:** to create a society that moves forward without leaving anyone behind (inclusive society) through realization of the full potential of all members of society. The goals are to reduce social disparity from 0.465 in 2013 to 0.36 in 2032, completely transform to social welfare system within 20 years and develop at least 20,000 households into Smart Farmers within 5 years.
3. **Raising Human Values:** to transform Thais into "Competent human beings in the 21sth Century" and Thais 4.0 in the first world. Measures under Thailand 4.0 will raise Thailand HDI from 0.722 to 0.8 or the top 50 countries within 10 years, ensure that at least 5 Thai universities are ranked amongst the world's top 100 higher education institution within 20 years.
4. **Environmental Protection:** to become a livable society that possesses an economic system capable of adjusting to climate change and low carbon society. The targets are to develop at least 10 cities into the world's most livable cities, reduce terrorism risk, and increase the proportion 

## Working remotely

Technology has change the nature and function of the workplace according to 2 major trends:

1. The office has become a collaborative space to stimulate brainstorming and collective problem solving. By providing support for group work within both formal and informal settings, a development team is encouraged to use collective intelligence and skill of a work group to solve problems of multiple dimensions and disciplines. The emphasis is on solving problems quickly and effectively.

2. Individuals work remotely from locations and timezones of their choosing. This allows workers to better use their time and resources in accomplishing their work. Workers use telecommunications and teleconferencing to meet with colleagues to address specific issues, collective message boards and file shares are used to hand off materials and to measure progress.

Both work environments require diligent, highly-skilled, motivated and results-driven teams of workers.

### Reasons for working remotely

Here are key reason given by digital nomads and their employers for working remotely. Simply put: Working remotely is the best. But what is it that makes remote jobs so great exactly? In a word: freedom. "Whether you want to enjoy some stunning scenery on a daily basis, need to be near family to help out or keep connections strong, are looking to cut down on your cost of living, or have always dreamt of truly nomadic lifestyle, remote work makes it possible," says Skillcrush people ops manager Kelli Smith.

https://skillcrush.com/2018/09/13/reasons-to-work-remotely/

1. You can actually focus. Eliza Barry, marketing director at Amata Solutions, says the office became totally unproductive for me due to constant interruptions that would turn into long conversations. It was not uncommon to have an employee send an email with a quick question about a marketing idea they had, and then follow up that email within minutes by dropping into my office to chat about it. I simply did not have time to deal with the influx of requests and repeated conversations about frequently asked questions that had been covered in emails. Now, she can maintain her focus, fend off distractions and Get. Stuff. Done. A study from Stanford University showed that working from home increased productivity by 13 percent. So, want to get more done and ditch the interruptions? You know what to do.

2. Naps are a serious option. "I own an office in town, but I work remotely four out of five days per week, so I can take a nap halfway through the day," says Max Robinson, owner of FishTankBank. "Since I started working naps into my daily work regime, it has totally changed my productivity for the better. Unfortunately it's not quite socially acceptable to take naps in offices, so I choose to work remotely from home and have them here instead!"

3. You can prioritize your mental health. Checking out is key to keeping your mental health in check, and there are some days you wake up and need to recharge, says Levi of G2 Crowd. Certain personality types need that more than others, he says, so if you're the type that needs some time to refuel, remote work is for you.

4. You can save money. Alex Robinson, General Manager at Team Building Hero, works with people who live in high cost cities like New York City, Boston, and San Francisco, but Robinson says "I prefer to live and work from small cities where my rent is less than 50 percent of those major cities. This lower rent means I have more room in my budget for travel." Want to travel like Robinson, save for an emergency fund or house, or simply have more fun money? Remote work is the answer.

5. It's easier to be a working parent. "I can easily navigate school delayed openings, half days and holidays, and be at school to pick up a sick child in ten minutes. I can get back to work on an unfinished project after the kids go to bed, or while waiting for them at sports practice," says Cynthia Meyer, resident financial planner at Financial Finesse. "The guilt of putting family in the backseat due to work commitments is something I have never come across thanks to my remote work. I would never want to miss my daughter's first steps because I was caught up in a work meeting!" says Sireesha Narumanchi, founder at Crowdworknews.

6. Your access to the job market isn't limited by where you live. "I live one hour south of Boston. Being someone who is into writing, SEO, and marketing, it means all the jobs are there. The question basically comes down to, am I willing to commit two to four hours a day of driving, on top of my work hours, for a job? What does my life look like if I do that five days a week?" says Nicholas Rizzo, Training Research & Writer, RunRepeat.com. The answer was clear for Rizzo: Go remote and stop being limited by where he lives. The same goes for Michelle Klieger of Stratagerm Consulting, LLC. "My education, experience, and passion is in the field of agriculture. However, I recently moved to New England to be close to my family. The New England agriculture industry is small and niche, with limited openings. So, working remotely provides me the best of both worlds, access to great career opportunities and a closeness to my family," she says.

7. You can escape the open office plan. Open offices seem like the future, but they're a pain for productivity. Lauren Morley, chief marketing officer at Techvera, says that her company's open office was a nightmare (in terms of) getting anything done. My train of thought was always flying off the tracks and it was hard to be as productive as I wanted to be. Maybe you can relate: I would frequently leave an eight hour day feeling like I barely accomplished anything, she says. But remote work changed everything: I've noticed I'm much calmer and less stressed, and my output and quality of work has improved. I feel and look healthier. I've learned how to be a better self-motivator and effective communicator. I absolutely love working remotely and I don't know if I could ever go back to office life, Morley says.

8. You can work from wherever you want. I spent many years working in a windowless hospital office with fluorescent lights and felt very disconnected from the outdoors. Now, I am living in my teardrop camper traveling across the U.S. with my Verizon hotspot for internet access. And best of all, in my downtime I get to explore the beautiful outdoors with my husband. Right now, we're in upper Michigan and we're heading to Colorado and Southern Utah next. I love working remotely and will never go back to the old way of doing things! says Sarah Stromsdorfer, occupational therapist and founder of My OT Spot

9. You can meet your physical needs more easily. I work remotely because as I get older, I need to manage my energy levels and workload more, says Neil Pope, CEO of Game On Music. If I feel like sleeping in and starting late I can, which gives me the freedom to work with maximum efficiency when I am at my most productive, he says.

10. You can make your own schedule. Working remotely gives me freedom over how I spend my time, says Danielle, UX/UI Designer at Studio Moku. I often work four hours in the morning, enjoy the day and work four more hours at night. Work best at 2:00 a.m.? It's within reach!

11. You can live wherever you want. Annie Pagano, marketing coordinator at Interpreters and Translators, Inc., says I work remotely because I get to live in a state that I love (Colorado) while continuing to work for a company that I love and have worked with for seven years. They are based in Connecticut which is where I am originally from and my family still lives. Whenever I travel for meetings or to work out of the home office, I get to visit with my family and friends. It's a complete win/win!

12. Your office is your own. It's great to work remotely, because it allows employees to create a work environment that is conducive to putting out their best work. You're also typically able to control the noise level and concentrate in your own home, says Shilonda Downing of Virtual Work Team LLC. Don't just stop at noise level: Go for temperature, soundtrack, and office decoration. You're in charge!

13. Avoid the commute. In a major city a commute can easily be 30-90 minutes, and I prefer to use this time for productive work at my home office, says growth marketer Michael Alexis. Commuting isn't just bad for you (and it is: long commutes have been shown to be detrimental to your health and increase stress levels), but those drives negatively impact the environment, too. Extra bonus: The time you save as a remote worker is yours to use on anything you want. I've used these sessions for side projects that help push my career forward and work toward promotions, Alexis says.

14. You can travel all the time. Theres good news if you've got the travel bug. Being a remote worker means you're completely untethered. Working remotely gives me the opportunity to travel full-time. I can explore any place with good internet access, which in today's world is almost everywhere. I love that I can take my job with me anywhere in the world and combine my passion for teaching with my travel ambitions, says Nicola Rae, English teacher at VIPKID.

15. You can better serve your customers. Substance use counsellor Annina Schmid works remotely and can offer specialized services such as eating disorder and substance use counselling to people in remote areas that wouldn't otherwise have access to this kind of support. This allows her to help more people, and opens up a client base all over the world.

16. You can work alone. I'm an introvert, and like all introverts, I couldn't stand open office plans, says Lucio Buffalmano, founder the ThePowerMoves. Are you similarly averse to small talk? Working remotely can make socializing a non-issue.

17. You can keep things interesting. I work remotely because it gives me the opportunity to meet new people and see new things every day, says journalist and content creator Hilary Sheinbaum. Having a change of atmosphere also keeps me on my toes. I'm never bored with the same old environment, she says. This kind of pattern disruption can boost creativity and inspire new ideas, says Remote Bliss Rebecca Safier. As a result, employees might be more innovative and take more initiative, which benefits their personal growth and the company they work for alike, she says.

18. Ditch the professional clothes.
Career coach Jill Ozovek points out that there is no need for a dress code when you work remotely, so you can spend all day in athleisureor even pjs is that's your thing. Bonus: You'll save money on a work wardrobe, since professional clothes do not come cheap.

However, remote worker must still produce results on time and on budget. To do that they need to take time and project management seriously. Also it is important to maintain regular effective communications. Being off campus can make one feel forgotten or ignored if communication is not 2 way on a regular basis.
   
Digital nomads

## Sustainable development

The success of Google was built on the motto "Don't be evil" which was used in their corporate code of conduct. Although the parent company "Alphabet" took the motto "Do the right thing", both statements are an ascent to the idea that true success and growth is never meant to cause harm to other. This concept of inclusion is reflected across the full range of Alphabet products where developers are encouraged to embrace the corporate ethos to "create - design - code - build for everyone". In an era of growing corporate social responsibility (CSR), businesses are seeking to reach out and build their communities as part of their business activities.

### United Nations Sustainable Development Goals

![UN Sustainable Development Goals](images/sustainabledevelopgoals.png)

### World Fair Trade Organization

![World Fair Trade Principles](images/WFTO-10-principles-900px.png)


Fair Trade  

1.**Creating Opportunities for Economically Disadvantaged Producers:**
Poverty reduction through trade forms a key part of the organization’s aims. The organization supports marginalized small producers, whether these are independent family businesses, or grouped in associations or co-operatives. It seeks to enable them to move from income insecurity and poverty to economic self-sufficiency and ownership. The organization has a plan of action to carry this out.

2. **Transparency and Accountability:**
The organization is transparent in its management and commercial relations. It is accountable to all its stakeholders and respects the sensitivity and confidentiality of commercial information supplied. The organization finds appropriate, participatory ways to involve employees, members and producers in its decision-making processes. It ensures that relevant information is provided to all its trading partners. The communication channels are good and open at all levels of the supply chain.

3. **Fair Trading Practices:**
The organization trades with concern for the social, economic and environmental well-being of marginalized small producers and does not maximize profit at their expense. It is responsible and professional in meeting its commitments in a timely manner. Suppliers respect contracts and deliver products on time and to the desired quality and specifications.

Fair Trade buyers, recognising the financial disadvantages producers and suppliers face, ensure orders are paid on receipt of documents and according to the attached guidelines. For Handicraft Fair Trade products, an interest free pre-payment of at least 50 % is made on request. For Food Fair Trade products, pre-payment of at least 50% at a reasonable interest is made if requested. Interest rates that the suppliers pay must not be higher than the buyers’ cost of borrowing from third parties. Charging interest is not required.

Where southern Fair Trade suppliers receive a pre payment from buyers, they ensure that this payment is passed on to the producers or farmers who make or grow their Fair Trade products.

Buyers consult with suppliers before canceling or rejecting orders. Where orders are cancelled through no fault of producers or suppliers, adequate compensation is guaranteed for work already done. Suppliers and producers consult with buyers if there is a problem with delivery, and ensure compensation is provided when delivered quantities and qualities do not match those invoiced.

The organization maintains long term relationships based on solidarity, trust and mutual respect that contribute to the promotion and growth of Fair Trade. It maintains effective communication with its trading partners. Parties involved in a trading relationship seek to increase the volume of the trade between them and the value and diversity of their product offer as a means of growing Fair Trade for the producers in order to increase their incomes. The organization works cooperatively with the other Fair Trade Organizations in country and avoids unfair competition. It avoids duplicating the designs of patterns of other organizations without permission.

Fair Trade recognizes, promotes and protects the cultural identity and traditional skills of small producers as reflected in their craft designs, food products and other related services.

4. **Payment of a Fair Price:**
A fair price is one that has been mutually agreed by all through dialogue and participation, which provides fair pay to the producers and can also be sustained by the market. Where Fair Trade pricing structures exist, these are used as a minimum. Fair pay means provision of socially acceptable remuneration (in the local context) considered by producers themselves to be fair and which takes into account the principle of equal pay for equal work by women and men. Fair Trade marketing and importing organizations support capacity building as required to producers, to enable them to set a fair price.

5. **Ensuring no Child Labour and Forced Labour:**
The organization adheres to the UN Convention on the Rights of the Child, and national / local law on the employment of children. The organization ensures that there is no forced labour in its workforce and / or members or homeworkers.

Organizations who buy Fair Trade products from producer groups either directly or through intermediaries ensure that no forced labour is used in production and the producer complies with the UN Convention on the Rights of the Child, and national / local law on the employment of children. Any involvement of children in the production of Fair Trade products (including learning a traditional art or craft) is always disclosed and monitored and does not adversely affect the children’s well-being, security, educational requirements and need for play.

6. **Commitment to Non Discrimination, Gender Equity and Women’s Economic Empowerment, and Freedom of Association:**
The organization does not discriminate in hiring, remuneration, access to training, promotion, termination or retirement based on race, caste, national origin, religion, disability, gender, sexual orientation, union membership, political affiliation, HIV/AIDS status or age.

The organization has a clear policy and plan to promote gender equality that ensures that women as well as men have the ability to gain access to the resources that they need to be productive and also the ability to influence the wider policy, regulatory, and institutional environment that shapes their livelihoods and lives. Organizational constitutions and by-laws allow for and enable women  to become active members of the organization in their own right (where it is a membership based organization),  and to take up leadership positions in the governance structure regardless of women’s status in relation to ownership of assets such as land and property.  Where women are employed within the organization, even where it is an informal employment situation, they receive equal pay for equal work.  The organization recognizes women’s full employment rights and is committed to ensuring that women receive their full statutory employment benefits. The organization takes into account the special health and safety needs of pregnant women and breast-feeding mothers.

The organization respects the right of all employees to form and join trade unions of their choice and to bargain collectively. Where the right to join trade unions and bargain collectively are restricted by law and/or political environment, the organization will enable means of independent and free association and bargaining for employees. The organization ensures that representatives of employees are not subject to discrimination in the workplace.

7. **Ensuring Good Working Conditions:**
The organization provides a safe and healthy working environment for employees and / or members. It complies, at a minimum, with national and local laws and ILO conventions on health and safety.

Working hours and conditions for employees and / or members (and any homeworkers) comply with conditions established by national and local laws and ILO conventions.

Fair Trade Organizations are aware of the health and safety conditions in the producer groups they buy from. They seek, on an ongoing basis, to raise awareness of health and safety issues and improve health and safety practices in producer groups.

8. **Providing Capacity Building:**
The organization seeks to increase positive developmental impacts for small, marginalized producers through Fair Trade.

The organization develops the skills and capabilities of its own employees or members. Organizations working directly with small producers develop specific activities to help these producers improve their management skills, production capabilities and access to markets – local / regional / international / Fair Trade and mainstream as appropriate. Organizations which buy Fair Trade products through Fair Trade intermediaries in the South assist these organizations to develop their capacity to support the marginalized producer groups that they work with.

9. **Promoting Fair Trade:**
The organization raises awareness of the aim of Fair Trade and of the need for greater justice in world trade through Fair Trade. It advocates for the objectives and activities of Fair Trade according to the scope of the organization. The organization provides its customers with information about itself, the products it markets, and the producer organizations or members that make or harvest the products. Honest advertising and marketing techniques are always used.

10. **Respect for the Environment:**
Organizations which produce Fair Trade products maximize the use of raw materials from sustainably managed sources in their ranges, buying locally when possible. They use production technologies that seek to reduce energy consumption and where possible use renewable energy technologies that minimize greenhouse gas emissions. They seek to minimize the impact of their waste stream on the environment. Fair Trade agricultural commodity producers minimize their environmental impacts, by using organic or low pesticide use production methods wherever possible.

Buyers and importers of Fair Trade products give priority to buying products made from raw materials that originate from sustainably managed sources, and have the least overall impact on the environment.

All organizations use recycled or easily biodegradable materials for packing to the extent possible, and goods are dispatched by sea wherever possible.



### Digital Intelligence Quotient

Technology has its dark side and resulting social changes are not always healthy. 


* [Dark side of technology](https://youtu.be/J7cYcesGLcY)

\BeginKnitrBlock{rmdextra}<div class="rmdextra">
**Electronic addictions**

*  **Internet addiction disorder:** condition where excessive exploration on the internet interferes with normal interaction with family and friends. This condition Often causes spouse to feel like a computer widow, especially if pornography is involved.
*  **Social media addiction:** condition where excessive self promtion on social media sites interferes with normal inteactions with family and friends.
*  **Gaming disorder:** condition where game play use reduces the amount of face-to-face interactions thereby interfering significantly with an individual’s social and family interactions. Such individuals often find game environments far more rewarding and fulfilling than their situation.
*  **Nomophobia:** condition where an individual experiences anxiety due to the fear of not having access to a working mobile phone
*  **Over-connection syndrome:** condition where mobile phone use reduces the amount of face-to-face interactions thereby interfering significantly with an individual’s social and family interactions.
*  **Hikikomori Syndrome:** condition in which the affected individuals refuse to leave their residence, isolating themselves away from society and family in a single room for a period exceeding six months. Often associated with excessive gaming and programming.
</div>\EndKnitrBlock{rmdextra}
   
* [Agent for good](https://youtu.be/po01VlNvCcQ)

* Collective intelligence
* Support for life-long learning
* Gallery of human creativity
* Mobilization fornoble causes
* Community building
* Access to information

* [Antisocial behaviors](https://youtu.be/dRl8EIhrQjQ)


#### Digital intelligence skills / \taibf ทักษะความฉลาดทางดิจิทัล

8 digital skills we must teach our children


The world economic forum has suggested that the next generation will need to master the follow 8 skills: [@Park2016a]

* **Digital identity:** The ability to create and manage one’s online identity and reputation. This includes an awareness of one's online persona and management of the short-term and long-term impact of one's online presence.

* **Digital use:** The ability to use digital devices and media, including the mastery of control in order to achieve a healthy balance between life online and offline.

* **Digital safety:** The ability to manage risks online (e.g. cyberbullying, grooming, radicalization) as well as problematic content (e.g. violence and obscenity), and to avoid and limit these risks.

* **Digital security:** The ability to detect cyber threats (e.g. hacking, scams, malware), to understand best practices and to use suitable security tools for data protection.

* **Digital emotional intelligence:** The ability to be empathetic and build good relationships with others online.

* **Digital communication:** The ability to communicate and collaborate with others using digital technologies and media.

* **Digital literacy:** The ability to find, evaluate, utilize, share and create content as well as competency in computational thinking.

* **Digital rights:** The ability to understand and uphold personal and legal rights, including the rights to privacy, intellectual property, freedom of speech and protection from hate speech.


**Three levels of Digital Intelligence Quotient:**

* Level 1: **Digital citizenship:** The ability to use digital technology and media in safe, responsible and effective ways

* Level 2: **Digital creativity:** The ability to become a part of the digital ecosystem by co-creating new content and turning ideas into reality by using digital tools

* Level 3: **Digital entrepreneurship:** The ability to use digital media and technologies to solve global challenges or to create new opportunities

![DQ Skills](images/DQthai.png)


\BeginKnitrBlock{rmdextra}<div class="rmdextra">
**Understanding and understanding of a child trained as a Digital Citizen**


| Area of skill | Description |
|:-----------------------|:---------------------------------------------------------|
| **Digital Citizen Identity** | the ability to build and manage a healthy identity online and offline with integrity |
| **Screen-Time Management**| the ability to manage one’s screen time, multitasking, and one’s engagement in online games and social media with self-control |
| **Cyberbullying Management** |  the ability to detect situations of cyberbullying and handle them wisely |
| **Cyber Security Management** |  the ability to protect one’s data by creating strong passwords and to manage various cyberattacks |
| **Digital Empathy** |  the ability to show empathy towards one’s own and others’ needs and feelings online |
| **Digital Footprints** |  The ability to understand the nature of digital footprints and their real-life consequences and to manage them responsibly |
| **Critical Thinking** |  the ability to distinguish between true and false information, good and harmful content, and trustworthy and questionable contacts online |
| **Privacy Management** |  the ability to handle with discretion all personal information shared online to protect one’s and others’ privacy |
</div>\EndKnitrBlock{rmdextra}


<!--chapter:end:40-FutureTrends.Rmd-->

{backmatter}

# (APPENDIX) Appendix {-} 

<!--chapter:end:50-Appendix.Rmd-->

# Appendix A. Software used in this course

## Orange HR

## Sugar CRM

## Power BI

## Bonita BPM

## Online Store

## ERP - Odoo

## Logistics

* https://flightaware.com/live/airport/KJFK




<!--chapter:end:60-Software.Rmd-->



<!--chapter:end:99-references.Rmd-->
