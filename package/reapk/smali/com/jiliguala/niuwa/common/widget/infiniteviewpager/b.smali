.class public abstract Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;
.super Landroid/support/v4/view/af;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/view/af;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field private c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->d:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a:Landroid/content/Context;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;
    .param p3, "modelPos"    # I

    .prologue
    .line 264
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    const-string v1, "%s: ModelPos %s, indicator %s, Childcount %s viewChildCount %s tag %s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 265
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->e()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->d()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->d()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 264
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "builder":Ljava/lang/String;
    return-void
.end method

.method private b(I)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;
    .locals 3
    .param p1, "pagePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "indicator":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(Ljava/lang/Object;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/ViewGroup;
    new-instance v2, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    invoke-direct {v2, v1, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;-><init>(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-object v2
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 258
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a(Ljava/lang/String;Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method private c(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pagePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    const/4 v0, 0x0

    .line 129
    .local v0, "indicator":Ljava/lang/Object;, "TT;"
    packed-switch p1, :pswitch_data_0

    .line 146
    .end local v0    # "indicator":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 131
    .restart local v0    # "indicator":Ljava/lang/Object;, "TT;"
    :pswitch_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->f()Ljava/lang/Object;

    move-result-object v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->d()Ljava/lang/Object;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->e()Ljava/lang/Object;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_4
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "representation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 79
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    sget-boolean v3, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v3, :cond_0

    .line 81
    const-string v3, "before newPage"

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v2, v3, p1

    .line 84
    .local v2, "oldModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(I)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    move-result-object v1

    .line 85
    .local v1, "newModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c()V

    .line 91
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 92
    .local v0, "newChild":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b(Landroid/view/View;)V

    .line 93
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a(Landroid/view/View;)V

    goto :goto_1

    .line 96
    .end local v0    # "newChild":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v3, v3, p1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 157
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v0, v3, p1

    .line 158
    .local v0, "fromModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v1, v3, p2

    .line 159
    .local v1, "toModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-boolean v3, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v3, :cond_2

    .line 167
    const-string v3, "before"

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(Ljava/lang/String;)V

    .line 170
    :cond_2
    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c()V

    .line 171
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 172
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->b(Landroid/view/View;)V

    .line 173
    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a(Landroid/view/View;)V

    goto :goto_1

    .line 176
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    sget-boolean v3, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v3, :cond_4

    .line 177
    const-string v3, "transfer"

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(Ljava/lang/String;)V

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aget-object v3, v3, p2

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->a(Ljava/lang/Object;)V

    .line 180
    sget-boolean v3, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v3, :cond_0

    .line 181
    const-string v3, "after"

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    .local p1, "indicator":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->d:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation
.end method

.method b()V
    .locals 4

    .prologue
    .line 186
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 187
    .local v0, "pageModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->c()V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "pageModel":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    :cond_0
    return-void
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    .local p1, "currentIndicator":Ljava/lang/Object;, "TT;"
    const-string v0, ""

    return-object v0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 246
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    move-object v0, p3

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    .line 247
    .local v0, "model":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 241
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    const/4 v0, 0x5

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 64
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    sget-boolean v1, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/a;->j:Z

    if-eqz v1, :cond_0

    .line 67
    :cond_0
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->b(I)Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    move-result-object v0

    .line 68
    .local v0, "model":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c<TT;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;->c:[Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    aput-object v0, v1, p2

    .line 69
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->d()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 252
    .local p0, "this":Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b;, "Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/b<TT;>;"
    check-cast p2, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/common/widget/infiniteviewpager/c;->d()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
