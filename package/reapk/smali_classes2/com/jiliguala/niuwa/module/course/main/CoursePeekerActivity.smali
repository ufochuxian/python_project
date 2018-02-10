.class public Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;
.super Lcom/jiliguala/niuwa/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field public static final KEY_COURSE_ID:Ljava/lang/String; = "KEY_COURSE_ID"

.field public static final KEY_SUBCOURSE_INDEX:Ljava/lang/String; = "KEY_SUBCOURSE_INDEX"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private courseid:Ljava/lang/String;

.field private dialogFragment:Lcom/jiliguala/niuwa/common/a/g;

.field private index:I

.field private mUnitFragment:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->S_IS_SUB_COURSE_VISIBLE:Z

    .line 78
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->finish()V

    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f01001e

    const v7, 0x7f01001d

    .line 37
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0034

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 40
    .local v3, "view":Landroid/view/View;
    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_COURSE_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->courseid:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_SUBCOURSE_INDEX"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->index:I

    .line 47
    new-instance v2, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;

    invoke-direct {v2}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;-><init>()V

    .line 48
    .local v2, "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->relay:Z

    .line 49
    new-instance v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    invoke-direct {v4}, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;-><init>()V

    iput-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    .line 50
    iget-object v4, v2, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;->curcourse:Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->courseid:Ljava/lang/String;

    iput-object v5, v4, Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Curcourse;->_id:Ljava/lang/String;

    .line 51
    if-eqz v2, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "UNIT_OBJ"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 54
    const-class v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    iput-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->mUnitFragment:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    .line 55
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->getSupportFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 56
    .local v1, "ft":Landroid/support/v4/app/an;
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 57
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->mUnitFragment:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    const v4, 0x7f090478

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->mUnitFragment:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    sget-object v6, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 59
    sget-object v4, Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 63
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 69
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    .end local v2    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 61
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "ft":Landroid/support/v4/app/an;
    .restart local v2    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    .restart local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->mUnitFragment:Lcom/jiliguala/niuwa/module/unit/fragment/UnitFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0

    .line 66
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "ft":Landroid/support/v4/app/an;
    .end local v2    # "unit":Lcom/jiliguala/niuwa/logic/network/json/BabyIntiationTemplete$Units;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;->finish()V

    goto :goto_1
.end method
