.class public Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;,
        Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$a;,
        Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v4/app/ag;

.field private e:I

.field private f:Landroid/widget/TabHost$OnTabChangeListener;

.field private g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v4/app/an;)Landroid/support/v4/app/an;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/support/v4/app/an;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "newTab":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .line 232
    .local v2, "tab":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    move-object v1, v2

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "tab":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    :cond_1
    if-nez v1, :cond_2

    .line 237
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    if-eq v3, v1, :cond_6

    .line 240
    if-nez p2, :cond_3

    .line 241
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object p2

    .line 243
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 250
    :cond_4
    if-eqz v1, :cond_5

    .line 251
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 252
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->c(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->d(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 253
    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 261
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .line 263
    :cond_6
    return-object p2

    .line 257
    :cond_7
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/an;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    .line 113
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 57
    invoke-virtual {p0, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 58
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    .line 64
    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 65
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 69
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    .line 72
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v4/app/ag;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;)V

    .line 88
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 89
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->c:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    .line 91
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a()V

    .line 92
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v4/app/ag;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/ag;
    .param p3, "containerId"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Landroid/content/Context;)V

    .line 96
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 97
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->c:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    .line 99
    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->e:I

    .line 100
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a()V

    .line 101
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setId(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$a;

    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 126
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    invoke-direct {v1, v2, p2, p3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 130
    .local v1, "info":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    iget-boolean v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->h:Z

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 135
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-virtual {v3}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 138
    .local v0, "ft":Landroid/support/v4/app/an;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 144
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 146
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 152
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "ft":Landroid/support/v4/app/an;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 158
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .line 159
    .local v3, "tab":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    .line 161
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 162
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->b(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    iput-object v3, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->g:Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    if-nez v1, :cond_2

    .line 171
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v1

    .line 174
    :cond_2
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;->a(Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/an;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_1

    .line 181
    .end local v3    # "tab":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$c;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->h:Z

    .line 183
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/an;)Landroid/support/v4/app/an;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_2
    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {v1}, Landroid/support/v4/app/an;->i()I

    .line 189
    iget-object v4, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->d:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->c()Z

    .line 191
    :cond_4
    return-void

    .line 184
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->h:Z

    .line 197
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 209
    move-object v0, p1

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;

    .line 210
    .local v0, "ss":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    iget-object v1, v0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 202
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;-><init>(Landroid/os/Parcelable;)V

    .line 203
    .local v0, "ss":Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost$b;->a:Ljava/lang/String;

    .line 204
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->h:Z

    if-eqz v1, :cond_0

    .line 217
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/an;)Landroid/support/v4/app/an;

    move-result-object v0

    .line 218
    .local v0, "ft":Landroid/support/v4/app/an;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 223
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/tabhost/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    .line 122
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
