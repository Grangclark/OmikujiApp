//
//  SecondView.swift
//  OmikujiApp
//
//  Created by 長橋和敏 on 2025/01/13.
//

import SwiftUI

struct SecondView: View {
    // おみくじ結果を保存する変数
    @State private var result: String = "おみくじを引いてね！"
    
    // おみくじの結果の候補
    let omikujiResults = ["大吉","中吉","小吉","末吉","凶"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("これは2ページ目です！")
                .font(.largeTitle)
                .padding()
            
            Text(result) // 結果を表示するテキスト
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                // ボタンが押された時の動作
                result = omikujiResults.randomElement() ?? "エラー"
            }) {
                Text("おみくじを引く") // ボタンの表示テキスト
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // リセットボタン
            Button(action: {
                // 結果を初期値にリセット
                result = "おみくじを引いてね！"
            }) {
                Text("リセット")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
