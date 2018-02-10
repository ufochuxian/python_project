.class final Lrx/d/a$c;
.super Lrx/e;
.source "SourceFile"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/d/a$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;",
        "Lrx/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lrx/d/a$c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a$c$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/d/a$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a$c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p0, "this":Lrx/d/a$c;, "Lrx/d/a$c<TT;>;"
    .local p1, "state":Lrx/d/a$c$a;, "Lrx/d/a$c$a<TT;>;"
    invoke-direct {p0, p1}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 644
    iput-object p1, p0, Lrx/d/a$c;->b:Lrx/d/a$c$a;

    .line 645
    return-void
.end method

.method public static K()Lrx/d/a$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/d/a$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    new-instance v0, Lrx/d/a$c;

    new-instance v1, Lrx/d/a$c$a;

    invoke-direct {v1}, Lrx/d/a$c$a;-><init>()V

    invoke-direct {v0, v1}, Lrx/d/a$c;-><init>(Lrx/d/a$c$a;)V

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 649
    .local p0, "this":Lrx/d/a$c;, "Lrx/d/a$c<TT;>;"
    iget-object v0, p0, Lrx/d/a$c;->b:Lrx/d/a$c$a;

    iget-object v0, v0, Lrx/d/a$c$a;->a:Lrx/l;

    invoke-virtual {v0}, Lrx/l;->onCompleted()V

    .line 650
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 654
    .local p0, "this":Lrx/d/a$c;, "Lrx/d/a$c<TT;>;"
    iget-object v0, p0, Lrx/d/a$c;->b:Lrx/d/a$c$a;

    iget-object v0, v0, Lrx/d/a$c$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onError(Ljava/lang/Throwable;)V

    .line 655
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lrx/d/a$c;, "Lrx/d/a$c<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/d/a$c;->b:Lrx/d/a$c$a;

    iget-object v0, v0, Lrx/d/a$c$a;->a:Lrx/l;

    invoke-virtual {v0, p1}, Lrx/l;->onNext(Ljava/lang/Object;)V

    .line 660
    return-void
.end method
