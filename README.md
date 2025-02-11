# markdown-parser-go  
Markdown形式のテキストをHTML形式へ変換します。  
GitHub Flavored MarkdownやGitLab Flavored Markdownなど様々な方言が存在しますが、独自の方言を実装します。  
そのため、他の方言と書き方が異なる場合があります。 

## 使用技術
- Go 1.20

## 対応状況
- [x] 強調(strong)
- [x] 箇条書きリスト(ul)
- [x] 順序付きリスト(ol)
- [x] 見出し
- [x] リンク

## 使用方法
### 1. Dockerコンテナの起動  
以下のコマンドを実行すると、Dockerコンテナが起動します。  
```bash
make up
```

### 2. Dockerコンテナに接続し、サーバーを起動する  
以下のコマンドを実行すると、Dockerコンテナに接続した後にサーバーが起動します。  
```bash
make serve
```

### 3. リクエストを送信する  
以下のコマンドを実行することで、{markdown_text}をサーバーに送信することができます。  
リクエスト送信後、HTML形式に変換された{markdown_text}が表示されます。  
コマンドの実行が上手くいかない場合には、ターミナルを別で開き、コンテナに接続してコマンドを実行してください。  
POSTmanなどのアプリを使ってリクエストを送信することも可能です。  
```bash
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"Content": "{markdown text}"}' http://localhost:8081/convertmd
```  

#### h1タグの変換例  
リクエスト：  
```bash
curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d '{"Content": "# h1"}' http://localhost:8081/convertmd
```  
レスポンス：  
```plaintext
<h1>h1</h1>
```  

## 終了方法  
### Dockerコンテナの停止と削除    
以下のコマンドを実行すると、Dockerコンテナが停止し、削除されます。  
```bash
make down
```

## 参考サイト
- [マークダウンパーサを作ろう - エムスリーテックブログ](https://www.m3tech.blog/entry/2021/08/23/124000)