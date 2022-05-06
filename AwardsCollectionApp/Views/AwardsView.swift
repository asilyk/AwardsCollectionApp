//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()

    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }

    var body: some View {
        NavigationView {
            CustomGridView(columns: 2, items: activeAwards) { itemSize, award in
                VStack {
                    award.awardView
                        .frame(width: 0.7 * itemSize, height: 0.7 * itemSize)
                    Text(award.title)
                }
                .padding()
                .frame(width: itemSize, height: itemSize)
            }
            .navigationBarTitle("Your awards: \(activeAwards.count)")
        }
        .navigationViewStyle(.stack)
    }
}

//struct AwardsView: View {
//    let awards = Award.getAwards()
//    let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
//    var activeAwards: [Award] {
//        awards.filter { $0.awarded }
//    }
//
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: columns) {
//                    ForEach(activeAwards, id: \.title) { award in
//                        VStack {
//                            award.awardView
//                            Text(award.title)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Your awards: \(activeAwards.count)")
//        }
//        .navigationViewStyle(.stack)
//    }
//}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
