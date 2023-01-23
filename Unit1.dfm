object Form1: TForm1
  Width = 640
  Height = 1481
  OnCreate = WebFormCreate
  object WebLabel1: TWebLabel
    Left = 20
    Top = 40
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Button'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel2: TWebLabel
    Left = 20
    Top = 112
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Switch'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object ColorLabel: TWebLabel
    Left = 8
    Top = 344
    Width = 100
    Height = 41
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Color Picker'
    ElementID = 'ColorLabel'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel4: TWebLabel
    Left = 8
    Top = 1183
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Image Comparer'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel5: TWebLabel
    Left = 8
    Top = 1431
    Width = 100
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'End'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebHTMLDiv1: TWebHTMLDiv
    Left = 140
    Top = 200
    Width = 349
    Height = 249
    HTML.Strings = (
      '<sl-color-picker'
      '   id="mycolorpicker"'
      '  class="fancyslider"'
      '  style="'
      '    --grid-height: 200px;'
      '    --grid-width: 400px;'
      '    --slider-height:30px;'
      '    --slider-handle-size: 40px;'
      '    --swatch-size: 40px;'
      '  "'
      '   inline '
      '  opacity'
      '  uppercase '
      '  format="rgb" '
      '  value="maroon"'
      '></sl-colorpicker>'
      ''
      '<style>'
      '.fancyslider::part(base) {'
      '  border: 2px solid royalblue;'
      '  border-radius: 12px;'
      '  background-color: #F0F0FF80;'
      '}'
      '.fancyslider::part(grid) {'
      '  border-top-left-radius: 11px;'
      '  border-top-right-radius: 11px;'
      '}'
      '.fancyslider::part(hue-slider) {'
      '  margin-left: 20px;'
      '  margin-right: 40px;'
      '  margin-bottom: 20px;'
      '  border-radius: 10px;'
      '}'
      '.fancyslider::part(opacity-slider) {'
      '  margin-left: 20px;'
      '  margin-right: 40px;'
      '  margin-top: 20px;'
      '  border-radius: 10px;'
      '}'
      '.fancyslider::part(slider-handle) {'
      'box-shadow: rgb(0 0 0 / 25%) 0px 0px 0px 4px;'
      '}'
      '.fancyslider::part(preview) {'
      '  border-radius: 15px;'
      '  width: 70px;'
      '  height: 70px;'
      '  margin-right: 10px;'
      '}'
      '.fancyslider::part(input) {'
      '  border: 1px solid royalblue;'
      '  border-radius: 10px;'
      '--sl-input-border-radius-medium: 10px;'
      '}'
      '.fancyslider::part(format-button) {'
      '  border: 1px solid royalblue;'
      '  border-top-left-radius: 10px;'
      '  border-bottom-left-radius: 10px;'
      '}'
      '.fancyslider::part(eye-dropper-button) {'
      '  border: 1px solid royalblue;'
      '  border-top-right-radius: 10px;'
      '  border-bottom-right-radius: 10px;'
      '}'
      '.fancyslider::part(format-button__base) {'
      '  border-top-left-radius:10px;'
      '  border-bottom-left-radius:10px;'
      '}'
      '.fancyslider::part(eye-dropper-button__base) {'
      '  border-top-right-radius: 10px;'
      '  border-bottom-right-radius: 10px;'
      '}'
      '.fancyslider::part(swatch) {'
      'margin: 0px;'
      '}'
      '</style>'
      '  ')
    Role = ''
  end
  object WebHTMLDiv2: TWebHTMLDiv
    Left = 140
    Top = 20
    Width = 100
    Height = 53
    ChildOrder = 2
    HTML.Strings = (
      
        '<sl-button id="mybutton" class="StrongButton" size="large" varia' +
        'nt="success">Success !</sl-button>'
      ''
      '<style>'
      '.StrongButton::part(label) {'
      '  font-weight: 700;'
      '  font-style: oblique;'
      '}'
      '</style>')
    Role = ''
  end
  object WebHTMLDiv3: TWebHTMLDiv
    Left = 140
    Top = 92
    Width = 365
    Height = 75
    ChildOrder = 2
    HTML.Strings = (
      
        '<sl-switch id="myswitch" class="bigswitches" style="--width: 100' +
        'px; --height: 50px; --thumb-size: 75px">Now THAT is a Switch!</s' +
        'l-switch>'
      ''
      '<style>'
      '.bigswitches::part(label) {'
      '  padding-left: 15px;'
      '}'
      '.bigswitches::part(thumb) {'
      '  filter: drop-shadow(0px 0px 2px black);'
      '  border-width: 5px;'
      '}'
      '.bigswitches::part(control) {'
      '  border-radius: 15px;'
      '}'
      '</style>')
    Role = ''
  end
  object WebHTMLDiv4: TWebHTMLDiv
    Left = 140
    Top = 1064
    Width = 500
    Height = 249
    ChildOrder = 7
    HTML.Strings = (
      '<sl-image-comparer class="ic"  position="50">'
      '  <img '
      '    slot="after" '
      
        '    src="https://cimg1.ibsrv.net/ibimg/hgm/1600x900-1/100/380/mc' +
        'laren-mp4-27-2012-formula-1-race-car_100380113.jpg"'
      
        '    style="border-top-left-radius: 18px; border-bottom-left-radi' +
        'us: 18px;"'
      '   />'
      '  <img slot="before" '
      
        '    src="https://media-cdn.mclaren.com/media/images/galleries/20' +
        '22_MCL_LAUNCH-MCL36-SAFE_LN_VELO_Side_v1_WEBSITE_RELEASE_600x620' +
        '.jpg" '
      
        '    style="border-top-right-radius: 18px; border-bottom-right-ra' +
        'dius: 18px;"'
      '  />'
      '</sl-image-comparer>'
      ''
      '<style>'
      '.ic {'
      '  overflow: hidden;'
      '  border-radius:20px;'
      '  border: 2px solid gray;'
      '}'
      '</style>')
    Role = ''
  end
end
