.class Landroid/support/v4/k/a$1;
.super Landroid/support/v4/k/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/k/a;->b()Landroid/support/v4/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/k/k",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/k/a;


# direct methods
.method constructor <init>(Landroid/support/v4/k/a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/k/a;

    .prologue
    .line 73
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iput-object p1, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-direct {p0}, Landroid/support/v4/k/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    iget v0, v0, Landroid/support/v4/k/a;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 81
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    iget-object v0, v0, Landroid/support/v4/k/a;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/k/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 111
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Landroid/support/v4/k/a$1;, "Landroid/support/v4/k/a$1;"
    iget-object v0, p0, Landroid/support/v4/k/a$1;->a:Landroid/support/v4/k/a;

    invoke-virtual {v0}, Landroid/support/v4/k/a;->clear()V

    .line 117
    return-void
.end method