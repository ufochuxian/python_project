.class public Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field public static final HTTP_REQEUST_PROD_ADDRESS:Ljava/lang/String; = "jiliguala.com"

.field public static HTTP_REQUEST_ADDRESS:Ljava/lang/String; = null

.field public static final HTTP_REQUEST_DEV_ADDRESS:Ljava/lang/String; = "dev.jiliguala.com"

.field public static final KEY_ABST:Ljava/lang/String; = "key_abst"

.field public static final KEY_AGE:Ljava/lang/String; = "key_age"

.field public static final KEY_CLASS_CAT:Ljava/lang/String; = "key_cat"

.field public static final KEY_PID:Ljava/lang/String; = "key_pid"

.field public static final KEY_PLAT:Ljava/lang/String; = "key_plat"

.field public static final KEY_THMB_URL:Ljava/lang/String; = "key_thmb_url"

.field public static final KEY_TITLE:Ljava/lang/String; = "key_title"

.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field static LISTEN_FORMAT:Ljava/lang/String; = null

.field static SETTING_FORMAT:Ljava/lang/String; = null

.field public static final SHARE_URL_MID:Ljava/lang/String; = "/preview.html?"

.field public static final SHARE_URL_PRE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field static WATCH_FORMAT:Ljava/lang/String; = null

.field public static final key_SHARE_SOURCE:Ljava/lang/String; = "share_source"

.field public static final key_SHARE_URL:Ljava/lang/String; = "share_url"

.field public static final key_SHARE_URL_THMB:Ljava/lang/String; = "share_url_thmb"


# instance fields
.field private et:Landroid/widget/EditText;

.field private mAbst:Ljava/lang/String;

.field private mAge:Ljava/lang/String;

.field private mCat:Ljava/lang/String;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPid:Ljava/lang/String;

.field private mPlatform:I

.field private mShareThmbUrl:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private mThmbUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleTv:Landroid/widget/TextView;

.field private mType:I

.field private mUtils:Lcom/jiliguala/niuwa/common/util/xutils/a;

.field private shareSource:Ljava/lang/String;

.field private thmb:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/jiliguala/niuwa/common/util/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dev.jiliguala.com"

    :goto_0
    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->HTTP_REQUEST_ADDRESS:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->HTTP_REQUEST_ADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->SHARE_URL_PRE:Ljava/lang/String;

    .line 53
    const-string v0, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u770b\u300a%s\u300b\uff01%s\uff08\u6765\u81ea@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5b9d\u5b9d\u82f1\u8bed\u542f\u8499\uff09"

    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->WATCH_FORMAT:Ljava/lang/String;

    .line 54
    const-string v0, "\u6211\u548c\u6211\u5b9d\u8d1d\u6b63\u5728\u542c%s\u7684\u5355\u66f2\u300a%s\u300b\u6765\u78e8\u8033\u6735\uff01%s\uff08\u6765\u81ea@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5b9d\u5b9d\u82f1\u8bed\u542f\u8499\uff09"

    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->LISTEN_FORMAT:Ljava/lang/String;

    .line 55
    const-string v0, "\u6211\u6b63\u5728\u7528@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a\uff0c\u5b9d\u8d1d\u82f1\u8bed\u542f\u8499\u795e\u5668\uff0c\u968f\u65f6\u968f\u5730\u521b\u9020\u82f1\u8bed\u6c1b\u56f4\uff0c\u5e2e\u52a9\u4e0d\u540c\u7a0b\u5ea6\u7684\u7238\u5988\u4eec\u8f7b\u677e\u5b8c\u6210\u5b9d\u8d1d\u7684\u82f1\u8bed\u542f\u8499\u3002\u4f60\u4e5f\u8bd5\u8bd5\u54df\uff1a%s"

    sput-object v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->SETTING_FORMAT:Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    const-string v0, "jiliguala.com"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity$1;-><init>(Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->doShare()V

    return-void
.end method

.method private doShare()V
    .locals 12

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "content":Ljava/lang/String;
    iget v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    :pswitch_0
    return-void

    .line 175
    :pswitch_1
    iget v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mThmbUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPid:Ljava/lang/String;

    iget v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mCat:Ljava/lang/String;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAge:Ljava/lang/String;

    iget-object v9, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareThmbUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareUrl:Ljava/lang/String;

    iget-object v11, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->shareSource:Ljava/lang/String;

    move-object v8, p0

    invoke-static/range {v0 .. v11}, Lcom/jiliguala/niuwa/logic/m/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->finish()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x7f0904e7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 188
    const v0, 0x7f010013

    const v1, 0x7f010020

    invoke-virtual {p0, v0, v1}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->overridePendingTransition(II)V

    .line 189
    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "stringObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPid:Ljava/lang/String;

    iget v1, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mType:I

    iget v2, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mCat:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAge:Ljava/lang/String;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->shareSource:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/m/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->onBackPressed()V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b001d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 94
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 98
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v5, 0x7f0904eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitleTv:Landroid/widget/TextView;

    .line 101
    const v5, 0x7f0b0047

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->setContentView(I)V

    .line 102
    const v5, 0x7f0904dd

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->et:Landroid/widget/EditText;

    .line 103
    const v5, 0x7f0904e4

    invoke-virtual {p0, v5}, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->thmb:Landroid/widget/ImageView;

    .line 104
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->thmb:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    const-string v5, "key_thmb_url"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mThmbUrl:Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mThmbUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->thmb:Landroid/widget/ImageView;

    const v6, 0x7f0803bd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_1
    const-string v5, "key_title"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitle:Ljava/lang/String;

    .line 115
    const-string v5, "key_abst"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAbst:Ljava/lang/String;

    .line 116
    const-string v5, "key_pid"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPid:Ljava/lang/String;

    .line 117
    const-string v5, "key_type"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mType:I

    .line 118
    const-string v5, "key_plat"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    .line 119
    const-string v5, "key_age"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAge:Ljava/lang/String;

    .line 120
    const-string v5, "key_cat"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mCat:Ljava/lang/String;

    .line 121
    const-string v5, "share_url"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareThmbUrl:Ljava/lang/String;

    .line 122
    const-string v5, "share_url_thmb"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareUrl:Ljava/lang/String;

    .line 123
    const-string v5, "share_source"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->shareSource:Ljava/lang/String;

    .line 124
    const-string v2, ""

    .line 125
    .local v2, "title":Ljava/lang/String;
    iget v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    packed-switch v5, :pswitch_data_0

    .line 144
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 147
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mThmbUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareThmbUrl:Ljava/lang/String;

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAbst:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff08\u6765\u81ea@\u53fd\u91cc\u5471\u5566APP\u5b98\u535a \u4e13\u6ce80-6\u5b9d\u5b9d\u82f1\u8bed\u542f\u8499\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "content":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->et:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/common/util/xutils/a;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mUtils:Lcom/jiliguala/niuwa/common/util/xutils/a;

    .line 111
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mUtils:Lcom/jiliguala/niuwa/common/util/xutils/a;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->thmb:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mThmbUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    .restart local v2    # "title":Ljava/lang/String;
    :pswitch_1
    const-string v2, "\u5206\u4eab\u7ed9\u5fae\u4fe1\u670b\u53cb"

    .line 128
    goto :goto_2

    .line 130
    :pswitch_2
    const-string v2, "\u5206\u4eab\u5230\u670b\u53cb\u5708"

    .line 131
    goto :goto_2

    .line 133
    :pswitch_3
    const-string v2, "\u5206\u4eab\u5230QQ\u7a7a\u95f4"

    .line 134
    goto :goto_2

    .line 136
    :pswitch_4
    const-string v2, "\u5206\u4eab\u7ed9QQ\u597d\u53cb"

    .line 137
    goto :goto_2

    .line 139
    :pswitch_5
    const-string v2, "\u5206\u4eab\u5230\u65b0\u6d6a\u5fae\u535a"

    .line 140
    goto :goto_2

    .line 150
    :cond_2
    iget v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mType:I

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPid:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/jiliguala/niuwa/logic/m/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mAbst:Ljava/lang/String;

    iget v7, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mType:I

    iget v8, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mPlatform:I

    invoke-static {v5, v6, v3, v7, v8}, Lcom/jiliguala/niuwa/logic/m/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_3

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f0904e7
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 210
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mUtils:Lcom/jiliguala/niuwa/common/util/xutils/a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/share/SinaWeiboShareActivity;->mUtils:Lcom/jiliguala/niuwa/common/util/xutils/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/a;->a()V

    .line 213
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "i"    # I
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    return-void
.end method
