.class Landroid/support/v4/k/b$1;
.super Landroid/support/v4/k/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/k/b;->b()Landroid/support/v4/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/k/k",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/k/b;


# direct methods
.method constructor <init>(Landroid/support/v4/k/b;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/k/b;

    .prologue
    .line 660
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iput-object p1, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-direct {p0}, Landroid/support/v4/k/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    iget v0, v0, Landroid/support/v4/k/b;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 673
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 668
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    iget-object v0, v0, Landroid/support/v4/k/b;->g:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 698
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/b;->c(I)Ljava/lang/Object;

    .line 699
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/b;->add(Ljava/lang/Object;)Z

    .line 689
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 678
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/b;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 703
    .local p0, "this":Landroid/support/v4/k/b$1;, "Landroid/support/v4/k/b$1;"
    iget-object v0, p0, Landroid/support/v4/k/b$1;->a:Landroid/support/v4/k/b;

    invoke-virtual {v0}, Landroid/support/v4/k/b;->clear()V

    .line 704
    return-void
.end method