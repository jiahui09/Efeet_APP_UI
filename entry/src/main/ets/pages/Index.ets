// @ts-nocheck
import router from '@ohos.router'
@Entry
@Component
struct Index {

  build() {
    Stack() {
      Image($r('app.media.background2'))
        .height('100%')
        .width('100%')
      Column() {
          Column(){
            Image($r('app.media.1'))
              .width(110).height(110).margin(15)
            Text('轻能跃迁')
              .fontSize(35)
              .fontWeight(FontWeight.Bold)
              .margin(20)
              .fontFamily('')
          }
          .height('30%')
          .margin(50)

          TextInput({placeholder:'username'})
            .backgroundColor('#ffffffff')
            .width(270)
            .height(40)
            .margin(10)

          TextInput({ placeholder: 'password' })
            .backgroundColor('#ffffffff')
            .width(270)
            .height(40)
            .margin(10)
            .type(InputType.Password)
            .maxLength(9)
            .showPasswordIcon(true)

          Button() {
            Text('Login')
              .fontSize(30)
              .fontWeight(FontWeight.Bold)
              .fontColor('#ffffffff')
          }
          .onClick(()=>{
            router.pushUrl({
              url:'pages/Page3'
            },(err) => {
              if (err) {
                console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
              console.info('Invoke pushUrl succeeded.');
            }
            )
          })
          .type(ButtonType.Capsule)
          .margin({
            top: 20
          })
          .backgroundColor('#ff4fb8f8')
          .width('40%')
          .height('5%')

          Row({top:200}) {
            Text('还未拥有账号？')
              .fontWeight(FontWeight.Bold)
            Text('    点击注册')
              .fontColor('#ff2792d9')
              .fontWeight(FontWeight.Bold)

          }
          .width(200)
          .height('30%')
          .alignItems(VerticalAlign.Bottom)
      }
      .width('100%')
    }
    .height('100%')

  }
}