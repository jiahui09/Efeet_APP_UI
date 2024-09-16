@Entry
@Component
struct Page3 {
  build(){
      Column({space:10}){
        Blank()
        Stack(){
          Rect({ width: '90%', height: 120 })
            .radius(20)
            .fill('#51000000')
            .stroke(Color.Transparent)
          Row({space:30}){
            Image($r("app.media.avatar"))
              .height(100)
              .width(100)
            Text('用户875612')
              .fontSize(20)
              .margin(10)
              .fontWeight(FontWeight.Bold)
          }
        }
        Row(){
          Text('  检测记录 ')
            .fontSize(15)
            .textAlign(TextAlign.Start)
            .fontWeight(FontWeight.Bold)
            .opacity(0.7)
          Blank()
          Text('查看详细>>')
            .fontSize(15)
            .opacity(0.5)
            .textAlign(TextAlign.Start)
        }
        //.width('80%')
        .width('90%')
        .justifyContent(FlexAlign.Start)
        Stack({alignContent:Alignment.Start}){
          Rect({ width: '90%', height: 150 })
            .radius(20)
            .fill('#8b6fc6b2')
            .stroke(Color.Transparent)
          Row(){
            Stack() {
              DataPanel({ values: [30], max: 100, type: DataPanelType.Circle }).width(160).height(160)
              Column({space:0}) {
                Row({space:3}){
                  Text('30').fontSize(35).fontColor('#182431')
                  Text('分').fontSize(15).lineHeight(15).fontWeight(500).opacity(0.7)
                }
                Text('检测评分').fontSize(9.33).lineHeight(12.83).fontWeight(500).opacity(0.6)
              }
            }

            Column({space:15}){
              Text('检测次数').opacity(0.8)
              Row({space:10}){
                Text('10')
                  .fontSize(50)
                  .fontWeight(FontWeight.Bold)
                Text('次')
              }
            }
            .align(Alignment.End)
            .width('40%')
          }
          .width('90%')
        }
        Blank()
        Row({space:20}){
          Stack(){
            Rect({ width: '41%', height: 120 })
              .radius(20)
              .fill('#b4cbe795')
              .stroke(Color.Transparent)
              Row({space:10}){
                  Image($r('app.media.run'))
                    .height(40)
                    .width(40)
                  Column({space:10}){
                    Text('总时长').fontSize(13).opacity(0.8)
                    Text('1h32min').fontSize(20).opacity(1).fontWeight(FontWeight.Bold)
                }
              }
          }
          Stack(){
            Rect({ width: '41%', height: 120 })
              .radius(20)
              .fill('#b4cbe795')
              .stroke(Color.Transparent)
            Row({space:10}){
              Image($r('app.media.success'))
                .height(40)
                .width(40)
              Column({space:10}){
                Text('正常次数').fontSize(13).lineHeight(12.83).fontWeight(1).opacity(0.8)
                Text('3次').fontSize(20).opacity(1).fontWeight(FontWeight.Bold)
              }
            }
          }
        }
        Row({space:20}){
          Stack(){
            Rect({ width: '41%', height: 120 })
              .radius(20)
              .fill('#b4cbe795')
              .stroke(Color.Transparent)
            Row({space:10}){
              Image($r('app.media.danger'))
                .height(50)
                .width(50)
              Blank()
              Column({space:10}){
                Text('异常次数').fontSize(13).opacity(0.8)
                Text('7次').fontSize(20).opacity(1).fontWeight(FontWeight.Bold)
              }
            }
          }
          Stack(){
            Rect({ width: '41%', height: 120 })
              .radius(20)
              .fill('#b4cbe795')
              .stroke(Color.Transparent)
            Row({space:10}){
              Image($r('app.media.Frequency'))
                .height(40)
                .width(40)
              Blank()
              Column({space:10}){
                Text('步频').fontSize(13).opacity(0.8)
                Text('36').fontSize(20).opacity(1).fontWeight(FontWeight.Bold)
              }
            }
          }
        }

        Blank()
        Column(){
          Text('风险评估')
            .height(20)
            .fontWeight(FontWeight.Bold)
          Stack(){
            DataPanel({ values: [30,30], max: 100, type: DataPanelType.Line }).width(300).height(10)
            Line()
              .width(10)
              .height(100)
              .startPoint([60, 10])
              .endPoint([60, 20])
              .stroke('#1f000000')
              .strokeWidth(5)
            //.strokeLineCap(LineCapStyle.Round)
          }
          .height(30)
          Blank()
          Text('本评估结果基于CNN-LSTM模型')
            .fontColor('#ffacacac')
            .fontSize(10)
        }

      }
      .height('100%')
      .width('100%')
      .backgroundColor('#ffffffe1')

  }
}