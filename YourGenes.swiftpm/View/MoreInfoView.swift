//
//  MoreInfoView.swift
//  Howwegene
//
//  Created by Jay Ahn on 2023/04/16.
//

import SwiftUI

struct MoreInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List {
                Section("Developer") {
                    Link("Jay Ahn", destination: URL(string: "https://github.com/JayHarrisonAhn")!)
                }
                Section("License") {
                    NavigationLink("Flaticon") {
                        List {
                            Section {
                                Text("This app uses icons from Flaticon under Flaticon Premium License(unlimited use without attribution)")
                                    .font(.caption2)
                            }
                            Section("License") {
                                Link("Flaticon - Terms of use(August 2022)", destination: URL(string: "https://www.freepikcompany.com/legal")!)
                                Text("""
10. Conditions for the Premium Subscription

The terms in this Section ("Premium Subscription Terms") govern any purchase of the Premium Subscription in the Website. When concluding the purchase procedure for any Premium Subscription, it shall be deemed that the User has read and accepted, without exception, the Premium Subscription Terms. For the avoidance of doubt, the Premium Subscription Terms are additional to the Terms which will continue to apply to Users who have acquired a Premium Subscription unless it is expressly provided otherwise in relation to specific provisions in the Premium Subscription Terms.

These Premium Subscription Terms are available to the User before the purchase of the Premium Subscription and may be stored or reproduced on a durable medium.

The Premium Subscription Terms are available in English and Spanish. In case the User is interested in purchasing any Premium Subscription, it has to follow the instructions available in the Website from time to time.

The Subscriptions available are offered in the Website where the pertinent information, price and conditions are included (including, without limitation, restrictions to the number of downloads each day). The Company can modify the Subscriptions offered at any time, offering with new Services (to which, unless otherwise stated, these Subscription Terms shall apply) or ceasing to offer any of the Services. The Subscriptions are personal, shall not be assigned to third parties and no third parties other than the User shall be allowed to use the Freepik Content (including as third parties, for these purposes, affiliates or entities part of the same group of companies).

The price for the Subscription is stated in the relevant currency in the Website and includes, if applicable, the relevant Value Added Tax. The Company is entitled to modify the price for any Subscription at any time. The Company shall apply the price stated in the Website at the time of the submission of the Subscription order by the User.

The User shall pay the Premium Subscription in advance through Paypal, credit/debit card or any other valid payment method offered by the Company, as stated in the Website. To purchase and pay the Premium Subscription, the User shall follow the instructions stated in the Website. The processing of the payment information and data through Paypal or credit/debit card is made within third-party sites. When ordering any Premium Subscription, the User authorizes the Company to collect the corresponding price through the chosen payment method. The Premium Subscription shall not be activated until the Company has received the payment or the payment has been authorized by the relevant financing entity. After that, the Premium Subscription shall be in force for the term purchased by the User.

Unless otherwise stated in these Premium Subscription Terms, the Premium Subscriptions shall be automatically and successively renewed at the expiration of its term, unless the User cancels the renewal of the Premium Subscription before its expiration. The Company shall charge the corresponding price by the same initial payment method. The Company may modify the price for the renewal of the Premium Subscription, provided that the User is informed with, at least, one-month prior notice, via email sent to the email address used for the registration process.

Once the User purchases the Premium Subscription, the screen shall confirm the purchase. In addition, within the shortest time reasonably possible and not after twenty-four (24) hours since the acceptance of the order, an email shall be sent to the User with the receipt of the purchase. The receipt may be stored and printed. The User may request and download an invoice as stated within the Website twenty-four (24) hours after making the relevant payment.

After the purchase of the Premium Subscription, the User may benefit from the following:

1. Benefits from Freepik Premium Subscription, which are the following:

The Service consisting in using the content in the Freepik Content and Storyset Contents (as defined here) without crediting the Company/Website.
Access all contents available in the Website.
Use the Website without advertisement displaying.
Not to be subject to the restrictions as to number of content downloads applicable to the Freepik Content from time to time, without prejudice to the application of certain restrictions to the number of downloads aimed at preventing a fraudulent or abusive use of the Website.
2. Benefits from Flaticon Premium Subscription, which can be found here.

The rest of the Conditions, including the conditions established or referred to in Clauses 7 and 8, will continue to apply, such as, without limitation, the prohibited uses for Freepik Content. Likewise, for the use of Flaticon Content, the Flaticon Terms and Conditions shall apply, which are incorporated into these Conditions.

The Company may offer the User, on certain occasions, the possibility to pause the Premium Subscription for a certain period of time, while the Premium Subscription is active. The User may pause and activate the Premium Subscription during the period in which it is in force as many times as he/she wishes, provided that this does not exceed the maximum aggregate pause period permitted by the Company, which will be indicated on the Website.

By pausing the Premium Subscription, the User shall cease to enjoy the benefits of the Premium Subscription included in this Section while the Premium Subscription is paused. The User may, at any time, reactivate the Premium Subscription, resuming the normal benefits of the Premium Subscription.

In the event that the User exhausts the maximum aggregate pause time of the Premium Subscription, the Premium Subscription will be automatically reactivated. Once the User has exhausted the maximum aggregate period allowed for pausing the Premium Subscription, the User will not be able to pause it again until the next billing period.

In the event that the User pauses his Premium Subscription, the period of validity and renewal of the Premium Subscription will be adjusted according to the time the Premium Subscription has been paused.

As the content in the Website is digital content, no cancellation right shall apply, which is expressly acknowledge and accepted by the Users, without prejudice to the guarantees stated in the consumers’ regulations that may be applicable, unless the Company states otherwise, in which case, will be subject to the conditions set forth by the Company.
"""
                                ).font(.caption2)
                            }
                        }
                    }
                    NavigationLink("Khan Academy") {
                        List {
                            Section {
                                Text("This app uses some image from Khan Academy under Khan Academy Terms of Service - 7. Proprietary Materials; Licenses")
                                    .font(.caption2)
                            }
                            Section("Contents") {
                                Link("Biology Library", destination: URL(string: "https://www.khanacademy.org/science/biology/classical-genetics/variations-on-mendelian-genetics/a/multiple-alleles-incomplete-dominance-and-codominance")!)
                            }
                            Section("License") {
                                Link("Can I use Khan Academy’s videos/name/materials/links in my project?", destination: URL(string: "https://support.khanacademy.org/hc/en-us/articles/202262954-Can-I-use-Khan-Academy-s-videos-name-materials-links-in-my-project-")!)
                                Link("Khan Academy Terms of Service(Updated: July 6th 2022)", destination: URL(string: "https://www.khanacademy.org/about/tos")!)
                                Text("""
7. Proprietary Materials; Licenses

7.1. Proprietary Materials
The Services are owned and operated by Khan Academy.  The visual interfaces, graphics, design, compilation, information, computer code (including source code or object code), software, services, content, educational videos and exercises, and all other elements of the Services (the “Services Materials”) are protected by United States and international copyright, patent, and trademark laws, international conventions, and other applicable laws governing intellectual property and proprietary rights. Except for any User Content provided and owned by Users and except as otherwise set forth in this Section 7 (Proprietary Materials; Licenses), all Services Materials, and all trademarks, service marks, and trade names, contained on or available through the Services are owned by or licensed to Khan Academy, and Khan Academy reserves all rights therein and thereto not expressly granted by these Terms.

7.2. Licensed Educational Content
Khan Academy may make available on the Services certain educational videos, exercises, and related supplementary materials that are owned by Khan Academy or its third-party licensors (the “Licensed Educational Content”).  Khan Academy grants to you a non-exclusive, non-transferable right to access and use the Licensed Educational Content as made available on the Services by Khan Academy solely for your personal, non-commercial purposes.  Unless expressly indicated on the Services that a particular item of Licensed Educational Content is made available to Users under alternate license terms, you may not download, distribute, sell, lease, modify, or otherwise provide access to the Licensed Educational Content to any third party.

7.2.1. Alternate Licenses.  In certain cases, Khan Academy or its licensors may make available Licensed Educational Content under alternate license terms, such as a variant of the Creative Commons License (as defined below) (each, an “Alternate License”). Where expressly indicated as such on the Services, and subject to the terms and conditions of these Terms, the applicable Licensed Educational Content is licensed to you under the terms of the Alternate License.  By using, downloading, or otherwise accessing such Licensed Educational Content, you agree to comply fully with all the terms and conditions of such Alternate License.
7.2.2. Creative Commons License.  Unless expressly otherwise identified on the Services with respect to a particular item of Licensed Educational Content, any reference to the “Creative Commons”, “CC” or similarly-phrased license shall be deemed to be a reference to the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 United States License (the “Creative Commons License”).
7.3. Licensed Educational Code
Khan Academy may make available, or allow Users to create and make available, on or through the Services certain educational, user-readable source code in connection with the “Computer Science” modules or exercises available on the Services (the “Licensed Educational Code”).  Unless otherwise indicated, all Licensed Educational Code is the property of Khan Academy or third-party licensors and, subject to the terms and conditions of these Terms, is licensed to you under the terms of the MIT License.  By downloading or otherwise accessing such Licensed Educational Code, you agree to comply with all the terms of the MIT License.

7.4. Non-Commercial Use
The Licensed Educational Content and Licensed Educational Code are intended for personal, non-commercial use only.  Without limiting the foregoing, and notwithstanding the terms of any Alternate License for such Licensed Educational Content, the Licensed Educational Content may not be used, distributed or otherwise exploited for any commercial purpose, commercial advantage or private monetary compensation, unless otherwise previously agreed in writing by Khan Academy.

7.4.1. Impermissible Uses.  Without limiting the generality of the foregoing, the following are types of uses that Khan Academy expressly defines as falling outside of “non-commercial” use:
7.4.1.1. the sale or rental of (1) any part of the Licensed Educational Content, (2) any derivative works based at least in part on the Licensed Educational Content, or (3) any collective work that includes any part of the Licensed Educational Content;
7.4.1.2. providing training, support, or editorial services that use or reference the Licensed Educational Content in exchange for a fee; and
7.4.1.3. the sale of advertisements, sponsorships, or promotions placed on the Licensed Educational Content, or any part thereof, or the sale of advertisements, sponsorships, or promotions on any website or blog containing any part of the Licensed Educational Material, including without limitation any “pop-up advertisements”.
7.4.2. Use Characterization.  Whether a particular use of the Licensed Educational Content is “non-commercial” depends on the use, not the user.  Thus, a use of the Licensed Educational Content that does not require that users pay fees and that does not provide an entity with a commercial advantage is “non-commercial,” even if this use is by a commercial entity. Conversely, any use that involves charging users in connection with their access to the Licensed Educational Content is not “non-commercial,” even if this use is by a non-profit entity.  As an example, a for-profit corporation’s use of the Licensed Educational Content for internal professional development or training of employees is permitted, so long as the corporation charges no fees, directly or indirectly, for such use. Conversely, as another example, a non-profit entity’s use of the Licensed Educational Content in connection with an fee-based training or educational program is NOT “non-commercial” and is not permitted.
7.5. Crediting Khan Academy
If you distribute, publicly perform or display, transmit, publish, or otherwise make available any Licensed Educational Content or any derivative works thereof, you must also provide the following notice prominently along with such Licensed Educational Content or derivative work thereof: “All Khan Academy content is available for free at www.khanacademy.org” and adhere to the Khan Academy brand guidelines.
"""
                                ).font(.caption2)
                            }
                        }
                    }
                }
            }
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
        }
    }
}

struct MoreInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoView()
    }
}
