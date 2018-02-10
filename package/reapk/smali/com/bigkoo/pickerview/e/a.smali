.class public Lcom/bigkoo/pickerview/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/FrameLayout$LayoutParams;

.field protected b:Landroid/view/ViewGroup;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/bigkoo/pickerview/b/a;

.field private g:Z

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Z

.field private k:I

.field private final l:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x50

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iput v3, p0, Lcom/bigkoo/pickerview/e/a;->k:I

    .line 163
    new-instance v0, Lcom/bigkoo/pickerview/e/a$2;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/e/a$2;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a;->c:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->a()V

    .line 44
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->b()V

    .line 45
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->c()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/a;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/a;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/bigkoo/pickerview/b/a;)Lcom/bigkoo/pickerview/e/a;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/bigkoo/pickerview/b/a;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/a;->f:Lcom/bigkoo/pickerview/b/a;

    .line 146
    return-object p0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 49
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/e/a;->d:Landroid/view/ViewGroup;

    .line 51
    sget v1, Lcom/bigkoo/pickerview/c$i;->layout_basepickerview:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/a;->d:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    .line 52
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/c$g;->content_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    .line 56
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/a;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/bigkoo/pickerview/e/a;
    .locals 3
    .param p1, "isCancelable"    # Z

    .prologue
    .line 150
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    sget v2, Lcom/bigkoo/pickerview/c$g;->outmost_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    :goto_0
    return-object p0

    .line 156
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->h()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->i:Landroid/view/animation/Animation;

    .line 61
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->i()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/e/a;->h:Landroid/view/animation/Animation;

    .line 62
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->j:Z

    .line 82
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/e/a;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->g:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/a;->g:Z

    .line 100
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bigkoo/pickerview/e/a$1;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/e/a$1;-><init>(Lcom/bigkoo/pickerview/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    iput-boolean v2, p0, Lcom/bigkoo/pickerview/e/a;->j:Z

    .line 128
    iput-boolean v2, p0, Lcom/bigkoo/pickerview/e/a;->g:Z

    .line 129
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->f:Lcom/bigkoo/pickerview/b/a;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/a;->f:Lcom/bigkoo/pickerview/b/a;

    invoke-interface {v0, p0}, Lcom/bigkoo/pickerview/b/a;->a(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public h()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 135
    iget v1, p0, Lcom/bigkoo/pickerview/e/a;->k:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bigkoo/pickerview/d/a;->a(IZ)I

    move-result v0

    .line 136
    .local v0, "res":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public i()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 140
    iget v1, p0, Lcom/bigkoo/pickerview/e/a;->k:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bigkoo/pickerview/d/a;->a(IZ)I

    move-result v0

    .line 141
    .local v0, "res":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/a;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method
