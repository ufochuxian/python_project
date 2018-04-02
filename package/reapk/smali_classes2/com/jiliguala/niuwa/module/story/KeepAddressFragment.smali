.class public Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;
.super Lcom/jiliguala/niuwa/common/base/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/base/c",
        "<",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field cities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field district:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field districtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field districts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActionNext:Landroid/widget/Button;

.field private mAreaContainer:Landroid/widget/RelativeLayout;

.field private mDetail:Landroid/widget/TextView;

.field private mDetailAddress:Landroid/widget/EditText;

.field private mKeepPhone:Landroid/widget/EditText;

.field private mKeepRegion:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mPhone:Landroid/widget/TextView;

.field private mPostCode:Landroid/widget/EditText;

.field private mReceiverName:Landroid/widget/EditText;

.field private mRegion:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSource:Ljava/lang/String;

.field protected mSubscriptions:Lrx/i/b;

.field private mWeiXinTxt:Landroid/widget/EditText;

.field provinceBeanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;",
            ">;"
        }
    .end annotation
.end field

.field private pvOptions:Lcom/bigkoo/pickerview/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->TAG:Ljava/lang/String;

    .line 63
    const-class v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/c;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cityList:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districtList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepRegion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Lcom/bigkoo/pickerview/b;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 92
    sget-object v1, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .line 93
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;-><init>()V

    .line 97
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;
    :cond_0
    return-object v0
.end method

.method private getProvinceData()V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$3;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V

    invoke-static {v1}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v1

    .line 222
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 223
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 224
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$2;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V

    .line 225
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/f;)Lrx/m;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 252
    return-void
.end method

.method private handleArguments()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSource:Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method

.method private listenSoftKeyBoard()V
    .locals 4

    .prologue
    .line 318
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/q;->a()Lcom/jiliguala/niuwa/common/util/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;

    invoke-direct {v3, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$4;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/jiliguala/niuwa/common/util/q;->a(Landroid/app/Activity;Landroid/view/View;Lcom/jiliguala/niuwa/common/util/q$b;)V

    .line 331
    return-void
.end method

.method private setTextWithStyle(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v3, "(\u5fc5\u586b)"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "fStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 258
    .local v0, "fEnd":I
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    .local v2, "style":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#ffe0861a"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 260
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method


# virtual methods
.method public actionNext()V
    .locals 7

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->checkNecessoryIfno()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepRegion:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetailAddress:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPostCode:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mWeiXinTxt:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->reportUserAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public checkNecessoryIfno()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u586b\u5199\u6536\u8d27\u4eba\u59d3\u540d"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 383
    :goto_0
    return v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u586b\u5199\u8054\u7cfb\u7535\u8bdd"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/x;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepRegion:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u9009\u62e9\u5730\u533a"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetailAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u586b\u5199\u8be6\u7ec6\u5730\u5740"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 383
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected bridge synthetic createPresenter()Lcom/jiliguala/niuwa/common/base/d;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->createPresenter()Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;-><init>()V

    return-object v0
.end method

.method public getSubscriptions()Lrx/i/b;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSubscriptions:Lrx/i/b;

    .line 102
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSubscriptions:Lrx/i/b;

    return-object v0
.end method

.method protected bridge synthetic getUi()Lcom/jiliguala/niuwa/common/base/e;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getUi()Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;

    move-result-object v0

    return-object v0
.end method

.method protected getUi()Lcom/jiliguala/niuwa/module/story/KeepAddressFragmentView;
    .locals 0

    .prologue
    .line 112
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 339
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetailAddress:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPostCode:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 342
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mWeiXinTxt:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/d;->b(Landroid/widget/EditText;)V

    .line 343
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/b;->d()V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/b;->f()V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x7f09005e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/c;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->handleArguments()V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 131
    const v0, 0x7f0b00b5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09037f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mName:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    .line 136
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0903de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPhone:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRegion:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepRegion:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mAreaContainer:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetail:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetailAddress:Landroid/widget/EditText;

    .line 160
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0903fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPostCode:Landroid/widget/EditText;

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mWeiXinTxt:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 173
    new-instance v0, Lcom/bigkoo/pickerview/b;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bigkoo/pickerview/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    .line 180
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getProvinceData()V

    .line 182
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mAreaContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->pvOptions:Lcom/bigkoo/pickerview/b;

    new-instance v1, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment$1;-><init>(Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/b;->a(Lcom/bigkoo/pickerview/b$a;)V

    .line 207
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSubscriptions:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 434
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/c;->onDestroy()V

    .line 435
    return-void
.end method

.method public onReportUserAddressSuccess()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 389
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/common/base/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 267
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->d()Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;

    move-result-object v1

    iget-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 268
    .local v0, "data":Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->getPresenter()Lcom/jiliguala/niuwa/common/base/d;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;

    iget-object v2, v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragemntPresenter;->requestAddressDataFromServer(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 279
    .local v8, "jsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_2

    .line 281
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 283
    .local v11, "provinceObject":Lorg/json/JSONObject;
    const-string v12, "name"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 284
    .local v10, "provinceName":Ljava/lang/String;
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->provinceBeanList:Ljava/util/ArrayList;

    new-instance v13, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;

    invoke-direct {v13, v10}, Lcom/jiliguala/niuwa/logic/network/json/ProvinceBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v12, "city"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 287
    .local v2, "cityArray":Lorg/json/JSONArray;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cities:Ljava/util/ArrayList;

    .line 288
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districts:Ljava/util/ArrayList;

    .line 290
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 292
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 294
    .local v4, "cityObject":Lorg/json/JSONObject;
    const-string v12, "name"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "cityName":Ljava/lang/String;
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cities:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->district:Ljava/util/ArrayList;

    .line 298
    const-string v12, "area"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 300
    .local v0, "areaArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_0

    .line 301
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "areaName":Ljava/lang/String;
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->district:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 305
    .end local v1    # "areaName":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districts:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->district:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "areaArray":Lorg/json/JSONArray;
    .end local v3    # "cityName":Ljava/lang/String;
    .end local v4    # "cityObject":Lorg/json/JSONObject;
    .end local v9    # "k":I
    :cond_1
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districtList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->districts:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v12, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cityList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->cities:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 312
    .end local v2    # "cityArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "provinceName":Ljava/lang/String;
    .end local v11    # "provinceObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 313
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 315
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method public reportAmplitude(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V
    .locals 3
    .param p1, "addressTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;

    .prologue
    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    const-string v1, "Type"

    const-string v2, "add"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :goto_0
    const-string v1, "QualityStoryFragment"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const-string v1, "Source"

    const-string v2, "item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_0
    :goto_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "User Address View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 429
    return-void

    .line 421
    :cond_1
    const-string v1, "Type"

    const-string v2, "modify"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :cond_2
    const-string v1, "SettingPersonalFragment"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    const-string v1, "Source"

    const-string v2, "profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public updateUI(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V
    .locals 3
    .param p1, "addressTemplete"    # Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->reportAmplitude(Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;)V

    .line 394
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPostCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mReceiverName:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 399
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepPhone:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_1
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasRegion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mKeepRegion:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_2
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasAddr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 406
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mDetailAddress:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_3
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasZip()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 409
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mPostCode:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->zip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_4
    invoke-virtual {p1}, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->hasWechatId()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/KeepAddressFragment;->mWeiXinTxt:Landroid/widget/EditText;

    iget-object v2, p1, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete;->data:Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/AddressTemplete$Data;->wechatid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 414
    :cond_5
    return-void

    .line 397
    .restart local v0    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0
.end method
