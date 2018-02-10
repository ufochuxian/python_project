.class final Lrx/c/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/b;


# direct methods
.method public constructor <init>(Lrx/c/b;)V
    .locals 0
    .param p1, "action"    # Lrx/c/b;

    .prologue
    .line 562
    .local p0, "this":Lrx/c/m$a;, "Lrx/c/m$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lrx/c/m$a;->a:Lrx/c/b;

    .line 564
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lrx/c/m$a;, "Lrx/c/m$a<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/c/m$a;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 569
    return-void
.end method
