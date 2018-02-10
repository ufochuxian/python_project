.class Landroid/support/v7/widget/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/q;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/q;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/q;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/v7/widget/q$1;->b:Landroid/support/v7/widget/q;

    iput-object p2, p0, Landroid/support/v7/widget/q$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/q$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/q$b;

    .line 121
    .local v6, "moveInfo":Landroid/support/v7/widget/q$b;
    iget-object v0, p0, Landroid/support/v7/widget/q$1;->b:Landroid/support/v7/widget/q;

    iget-object v1, v6, Landroid/support/v7/widget/q$b;->a:Landroid/support/v7/widget/RecyclerView$w;

    iget v2, v6, Landroid/support/v7/widget/q$b;->b:I

    iget v3, v6, Landroid/support/v7/widget/q$b;->c:I

    iget v4, v6, Landroid/support/v7/widget/q$b;->d:I

    iget v5, v6, Landroid/support/v7/widget/q$b;->e:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/q;->b(Landroid/support/v7/widget/RecyclerView$w;IIII)V

    goto :goto_0

    .line 124
    .end local v6    # "moveInfo":Landroid/support/v7/widget/q$b;
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/q$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/q$1;->b:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/q;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/q$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
