.class public final Lrx/internal/operators/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/z$a;,
        Lrx/internal/operators/z$b;,
        Lrx/internal/operators/z$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2


# instance fields
.field final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I


# direct methods
.method public constructor <init>(Lrx/e;Lrx/c/p;II)V
    .locals 0
    .param p3, "prefetch"    # I
    .param p4, "delayErrorMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+TT;>;",
            "Lrx/c/p",
            "<-TT;+",
            "Lrx/e",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/z;, "Lrx/internal/operators/z<TT;TR;>;"
    .local p1, "source":Lrx/e;, "Lrx/e<+TT;>;"
    .local p2, "mapper":Lrx/c/p;, "Lrx/c/p<-TT;+Lrx/e<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/z;->a:Lrx/e;

    .line 67
    iput-object p2, p0, Lrx/internal/operators/z;->b:Lrx/c/p;

    .line 68
    iput p3, p0, Lrx/internal/operators/z;->c:I

    .line 69
    iput p4, p0, Lrx/internal/operators/z;->d:I

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/z;, "Lrx/internal/operators/z<TT;TR;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    iget v2, p0, Lrx/internal/operators/z;->d:I

    if-nez v2, :cond_1

    .line 77
    new-instance v1, Lrx/e/g;

    invoke-direct {v1, p1}, Lrx/e/g;-><init>(Lrx/l;)V

    .line 82
    .local v1, "s":Lrx/l;, "Lrx/l<-TR;>;"
    :goto_0
    new-instance v0, Lrx/internal/operators/z$c;

    iget-object v2, p0, Lrx/internal/operators/z;->b:Lrx/c/p;

    iget v3, p0, Lrx/internal/operators/z;->c:I

    iget v4, p0, Lrx/internal/operators/z;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/operators/z$c;-><init>(Lrx/l;Lrx/c/p;II)V

    .line 84
    .local v0, "parent":Lrx/internal/operators/z$c;, "Lrx/internal/operators/z$c<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 85
    iget-object v2, v0, Lrx/internal/operators/z$c;->h:Lrx/i/e;

    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 86
    new-instance v2, Lrx/internal/operators/z$1;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/z$1;-><init>(Lrx/internal/operators/z;Lrx/internal/operators/z$c;)V

    invoke-virtual {p1, v2}, Lrx/l;->setProducer(Lrx/g;)V

    .line 93
    invoke-virtual {p1}, Lrx/l;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lrx/internal/operators/z;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 96
    :cond_0
    return-void

    .line 79
    .end local v0    # "parent":Lrx/internal/operators/z$c;, "Lrx/internal/operators/z$c<TT;TR;>;"
    .end local v1    # "s":Lrx/l;, "Lrx/l<-TR;>;"
    :cond_1
    move-object v1, p1

    .restart local v1    # "s":Lrx/l;, "Lrx/l<-TR;>;"
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/z;, "Lrx/internal/operators/z<TT;TR;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/z;->a(Lrx/l;)V

    return-void
.end method
