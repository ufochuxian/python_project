.class public Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;
.super Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
.source "SourceFile"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;-><init>()V

    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 19
    sget-object v1, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;

    .line 20
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;-><init>()V

    .line 23
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected init()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/course/main/fragment/OnCourseExitFragment;->init()V

    .line 29
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->mAlertText:Landroid/widget/TextView;

    const-string v1, "\u8f93\u5165\u7684\u53f7\u7801\u5df2\u7ecf\u5b58\u5728\uff0c\u662f\u5426\u53bb\u767b\u5f55\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->mConfirm:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/course/main/fragment/MobilePhoneExitFragment;->mCancel:Landroid/widget/Button;

    const-string v1, "\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method protected reportCancelAmplitude()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "State"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Moblie Exist Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method protected reportConfirmAmplitude()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "State"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Moblie Exist Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method protected reportPhoneExitAmplitude()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v1, "Moblie Exist Dialog"

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/a/b;->b(Ljava/lang/String;)V

    .line 37
    return-void
.end method
