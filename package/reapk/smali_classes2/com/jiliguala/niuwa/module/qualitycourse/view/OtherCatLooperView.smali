.class public Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private fm:Landroid/support/v4/app/ag;

.field private mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 30
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->fm:Landroid/support/v4/app/ag;

    .line 31
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 36
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    .line 41
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private goRoadMap()V
    .locals 8

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 64
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 70
    :goto_0
    const-string v4, "source"

    const-string v5, "Lesson list view"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->fm:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 73
    .local v3, "ft":Landroid/support/v4/app/an;
    const v4, 0x7f01001d

    const v5, 0x7f01001e

    const v6, 0x7f01001d

    const v7, 0x7f01001e

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/app/an;->a(IIII)Landroid/support/v4/app/an;

    .line 77
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    const v4, 0x7f090478

    sget-object v5, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 79
    sget-object v4, Lcom/jiliguala/niuwa/module/babyintiation/StudyCourseFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/an;->a(Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 83
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 87
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :goto_2
    return-void

    .line 68
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "arguments":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "arguments":Landroid/os/Bundle;
    goto :goto_0

    .line 81
    .restart local v3    # "ft":Landroid/support/v4/app/an;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 84
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00f0

    invoke-static {v1, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/qualitycourse/view/OtherCatLooperView;->goRoadMap()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x7f090037
        :pswitch_0
    .end packed-switch
.end method
