.class Landroid/support/v4/media/a$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/a$p;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$p;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    const/4 v5, -0x1

    .line 705
    if-nez p1, :cond_1

    .line 706
    const/4 p1, 0x0

    .line 721
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 708
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    :cond_1
    const-string v4, "android.media.browse.extra.PAGE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 709
    .local v1, "page":I
    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 710
    .local v2, "pageSize":I
    if-ne v1, v5, :cond_2

    if-eq v2, v5, :cond_0

    .line 713
    :cond_2
    mul-int v0, v2, v1

    .line 714
    .local v0, "fromIndex":I
    add-int v3, v0, v2

    .line 715
    .local v3, "toIndex":I
    if-ltz v1, :cond_3

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 716
    :cond_3
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 718
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 719
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 721
    :cond_5
    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 700
    iget-object v0, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v6, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    iget-object v6, v6, Landroid/support/v4/media/a$p;->a:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    const/4 v5, 0x0

    .line 678
    .local v5, "sub":Landroid/support/v4/media/a$o;
    :goto_0
    if-nez v5, :cond_2

    .line 679
    iget-object v6, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    .line 680
    invoke-static {p2}, Landroid/support/v4/media/a$k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 679
    invoke-virtual {v6, p1, v7}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 696
    :cond_0
    return-void

    .line 677
    .end local v5    # "sub":Landroid/support/v4/media/a$o;
    :cond_1
    iget-object v6, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    iget-object v6, v6, Landroid/support/v4/media/a$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/a$o;

    move-object v5, v6

    goto :goto_0

    .line 683
    .restart local v5    # "sub":Landroid/support/v4/media/a$o;
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/a$k;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 684
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/a$o;->c()Ljava/util/List;

    move-result-object v0

    .line 685
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$p;>;"
    invoke-virtual {v5}, Landroid/support/v4/media/a$o;->b()Ljava/util/List;

    move-result-object v4

    .line 686
    .local v4, "optionsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 687
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 688
    .local v3, "options":Landroid/os/Bundle;
    if-nez v3, :cond_3

    .line 689
    iget-object v6, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    invoke-virtual {v6, p1, v2}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 686
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    :cond_3
    iget-object v6, p0, Landroid/support/v4/media/a$p$a;->a:Landroid/support/v4/media/a$p;

    .line 692
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/a$p$a;->a(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v7

    .line 691
    invoke-virtual {v6, p1, v7, v3}, Landroid/support/v4/media/a$p;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2
.end method
