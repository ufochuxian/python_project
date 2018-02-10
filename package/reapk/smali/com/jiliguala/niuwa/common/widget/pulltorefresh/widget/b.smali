.class public Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1
    .param p3, "mAdapter"    # Landroid/support/v7/widget/RecyclerView$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "mHeaderViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "mFootViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    .line 19
    if-nez p1, :cond_0

    .line 20
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->c:Ljava/util/ArrayList;

    .line 24
    :goto_0
    if-nez p1, :cond_1

    .line 25
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->d:Ljava/util/ArrayList;

    .line 29
    :goto_1
    return-void

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 27
    :cond_1
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->d:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()Landroid/support/v7/widget/RecyclerView$a;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a()I

    move-result v2

    .line 98
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 99
    sub-int v1, p1, v2

    .line 100
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 101
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemId(I)J

    move-result-wide v4

    .line 105
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->e:I

    .line 80
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a()I

    move-result v2

    .line 81
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 82
    const/4 v3, -0x1

    .line 92
    :goto_0
    return v3

    .line 84
    :cond_0
    sub-int v1, p1, v2

    .line 85
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 86
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 88
    if-ge v1, v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$a;->getItemViewType(I)I

    move-result v3

    goto :goto_0

    .line 92
    :cond_1
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "position"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->a()I

    move-result v2

    .line 54
    .local v2, "numHeaders":I
    if-ge p2, v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sub-int v1, p2, v2

    .line 58
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 59
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    .line 61
    if-ge v1, v0, :cond_0

    .line 62
    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, p1, v1}, Landroid/support/v7/widget/RecyclerView$a;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$w;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b$a;

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b$a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b$a;

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b$a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/widget/b;->b:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    goto :goto_0
.end method
