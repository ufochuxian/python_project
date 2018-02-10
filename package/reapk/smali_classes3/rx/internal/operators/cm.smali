.class public Lrx/internal/operators/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/c",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/cm;, "Lrx/internal/operators/cm<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/internal/operators/cm;-><init>(Lrx/c/c;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lrx/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/c",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/cm;, "Lrx/internal/operators/cm<TT;>;"
    .local p1, "onDrop":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lrx/internal/operators/cm;->a:Lrx/c/c;

    .line 51
    return-void
.end method

.method public static a()Lrx/internal/operators/cm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/cm",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lrx/internal/operators/cm$a;->a:Lrx/internal/operators/cm;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/cm;, "Lrx/internal/operators/cm<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 57
    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lrx/internal/operators/cm$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/cm$1;-><init>(Lrx/internal/operators/cm;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 65
    new-instance v1, Lrx/internal/operators/cm$2;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/cm$2;-><init>(Lrx/internal/operators/cm;Lrx/l;Lrx/l;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/cm;, "Lrx/internal/operators/cm<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cm;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
