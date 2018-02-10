.class public Lcom/bigkoo/pickerview/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bigkoo/pickerview/lib/WheelView;

.field private c:Lcom/bigkoo/pickerview/lib/WheelView;

.field private d:Lcom/bigkoo/pickerview/lib/WheelView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/bigkoo/pickerview/b/b;

.field private j:Lcom/bigkoo/pickerview/b/b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 34
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Z

    .line 35
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    .line 36
    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/e/b;->a(Landroid/view/View;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method private b(III)V
    .locals 3
    .param p1, "opt1Select"    # I
    .param p2, "opt2Select"    # I
    .param p3, "opt3Select"    # I

    .prologue
    .line 208
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/a/a;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;)V

    .line 209
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 211
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v2, Lcom/bigkoo/pickerview/a/a;

    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;)V

    .line 214
    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 217
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 219
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/bigkoo/pickerview/e/b;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/b/b;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/b/b;

    return-object v0
.end method

.method static synthetic e(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method

.method static synthetic f(Lcom/bigkoo/pickerview/e/b;)Lcom/bigkoo/pickerview/lib/WheelView;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/e/b;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(III)V
    .locals 1
    .param p1, "option1"    # I
    .param p2, "option2"    # I
    .param p3, "option3"    # I

    .prologue
    .line 199
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/e/b;->h:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/bigkoo/pickerview/e/b;->b(III)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 203
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 204
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 205
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;

    .prologue
    .line 143
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 147
    :cond_1
    if-eqz p3, :cond_2

    .line 148
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setLabel(Ljava/lang/String;)V

    .line 149
    :cond_2
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    .local p1, "optionsItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 41
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 7
    .param p4, "linkage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    .local p1, "options1Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "options2Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    .local p3, "options3Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;>;"
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 52
    iput-boolean p4, p0, Lcom/bigkoo/pickerview/e/b;->h:Z

    .line 53
    iput-object p1, p0, Lcom/bigkoo/pickerview/e/b;->e:Ljava/util/ArrayList;

    .line 54
    iput-object p2, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    .line 55
    iput-object p3, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x4

    .line 57
    .local v0, "len":I
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 58
    const/16 v0, 0x8

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 60
    const/16 v0, 0xc

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/c$g;->options1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 63
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v3, Lcom/bigkoo/pickerview/a/a;

    iget-object v4, p0, Lcom/bigkoo/pickerview/e/b;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v0}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 64
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v5}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 66
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/c$g;->options2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 67
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 68
    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v4, Lcom/bigkoo/pickerview/a/a;

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 71
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->a:Landroid/view/View;

    sget v3, Lcom/bigkoo/pickerview/c$g;->options3:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bigkoo/pickerview/lib/WheelView;

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 72
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 73
    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    new-instance v4, Lcom/bigkoo/pickerview/a/a;

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Lcom/bigkoo/pickerview/a/a;-><init>(Ljava/util/ArrayList;)V

    .line 73
    invoke-virtual {v3, v4}, Lcom/bigkoo/pickerview/lib/WheelView;->setAdapter(Lcom/bigkoo/pickerview/a/c;)V

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCurrentItem(I)V

    .line 77
    const/16 v1, 0x19

    .line 79
    .local v1, "textSize":I
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 80
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 81
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setTextSize(F)V

    .line 83
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->f:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v6}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->g:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 86
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2, v6}, Lcom/bigkoo/pickerview/lib/WheelView;->setVisibility(I)V

    .line 89
    :cond_5
    new-instance v2, Lcom/bigkoo/pickerview/e/b$1;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/e/b$1;-><init>(Lcom/bigkoo/pickerview/e/b;)V

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/b/b;

    .line 108
    new-instance v2, Lcom/bigkoo/pickerview/e/b$2;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/e/b$2;-><init>(Lcom/bigkoo/pickerview/e/b;)V

    iput-object v2, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/b/b;

    .line 130
    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 131
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->i:Lcom/bigkoo/pickerview/b/b;

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/b;)V

    .line 132
    :cond_6
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 133
    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    iget-object v3, p0, Lcom/bigkoo/pickerview/e/b;->j:Lcom/bigkoo/pickerview/b/b;

    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/lib/WheelView;->setOnItemSelectedListener(Lcom/bigkoo/pickerview/b/b;)V

    .line 134
    :cond_7
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p3, "linkage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    .local p1, "options1Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "options2Items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<TT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bigkoo/pickerview/e/b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 46
    return-void
.end method

.method public a(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .prologue
    .line 156
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 157
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 158
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 159
    return-void
.end method

.method public a(ZZZ)V
    .locals 1
    .param p1, "cyclic1"    # Z
    .param p2, "cyclic2"    # Z
    .param p3, "cyclic3"    # Z

    .prologue
    .line 166
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 167
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p2}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 168
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p3}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 169
    return-void
.end method

.method public b(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .prologue
    .line 175
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 176
    return-void
.end method

.method public b()[I
    .locals 3

    .prologue
    .line 191
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 192
    .local v0, "currentItems":[I
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->b:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 193
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->c:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 194
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v2}, Lcom/bigkoo/pickerview/lib/WheelView;->getCurrentItem()I

    move-result v2

    aput v2, v0, v1

    .line 195
    return-object v0
.end method

.method public c(Z)V
    .locals 1
    .param p1, "cyclic"    # Z

    .prologue
    .line 183
    .local p0, "this":Lcom/bigkoo/pickerview/e/b;, "Lcom/bigkoo/pickerview/e/b<TT;>;"
    iget-object v0, p0, Lcom/bigkoo/pickerview/e/b;->d:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p1}, Lcom/bigkoo/pickerview/lib/WheelView;->setCyclic(Z)V

    .line 184
    return-void
.end method
