.class public Landroid/support/v7/h/f$a;
.super Landroid/support/v7/h/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/h/f$b",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/h/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/h/f$b",
            "<TT2;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v7/h/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/h/f$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/h/f$b",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    .local p1, "wrappedCallback":Landroid/support/v7/h/f$b;, "Landroid/support/v7/h/f$b<TT2;>;"
    invoke-direct {p0}, Landroid/support/v7/h/f$b;-><init>()V

    .line 774
    iput-object p1, p0, Landroid/support/v7/h/f$a;->a:Landroid/support/v7/h/f$b;

    .line 775
    new-instance v0, Landroid/support/v7/h/b;

    iget-object v1, p0, Landroid/support/v7/h/f$a;->a:Landroid/support/v7/h/f$b;

    invoke-direct {v0, v1}, Landroid/support/v7/h/b;-><init>(Landroid/support/v7/h/d;)V

    iput-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    .line 776
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 818
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    invoke-virtual {v0}, Landroid/support/v7/h/b;->a()V

    .line 819
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 785
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/b;->a(II)V

    .line 786
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->a:Landroid/support/v7/h/f$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/f$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 790
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/b;->b(II)V

    .line 791
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->a:Landroid/support/v7/h/f$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/f$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 795
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/b;->c(II)V

    .line 796
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->a:Landroid/support/v7/h/f$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/h/f$b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 800
    .local p0, "this":Landroid/support/v7/h/f$a;, "Landroid/support/v7/h/f$a<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/h/f$a;->b:Landroid/support/v7/h/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/h/b;->a(IILjava/lang/Object;)V

    .line 801
    return-void
.end method
