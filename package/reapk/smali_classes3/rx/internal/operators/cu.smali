.class public final Lrx/internal/operators/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field final a:Lrx/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/q",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field private final b:Lrx/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/o",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/cu;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/cu;, "Lrx/internal/operators/cu<TR;TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/cu$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/cu$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lrx/internal/operators/cu;-><init>(Lrx/c/o;Lrx/c/q;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lrx/c/o;Lrx/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/o",
            "<TR;>;",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/cu;, "Lrx/internal/operators/cu<TR;TT;>;"
    .local p1, "initialValueFactory":Lrx/c/o;, "Lrx/c/o<TR;>;"
    .local p2, "accumulator":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lrx/internal/operators/cu;->b:Lrx/c/o;

    .line 75
    iput-object p2, p0, Lrx/internal/operators/cu;->a:Lrx/c/q;

    .line 76
    return-void
.end method

.method public constructor <init>(Lrx/c/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/q",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/cu;, "Lrx/internal/operators/cu<TR;TT;>;"
    .local p1, "accumulator":Lrx/c/q;, "Lrx/c/q<TR;-TT;TR;>;"
    sget-object v0, Lrx/internal/operators/cu;->c:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/cu;-><init>(Ljava/lang/Object;Lrx/c/q;)V

    .line 89
    return-void
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/cu;, "Lrx/internal/operators/cu<TR;TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    iget-object v3, p0, Lrx/internal/operators/cu;->b:Lrx/c/o;

    invoke-interface {v3}, Lrx/c/o;->call()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "initialValue":Ljava/lang/Object;, "TR;"
    sget-object v3, Lrx/internal/operators/cu;->c:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    .line 96
    new-instance v2, Lrx/internal/operators/cu$2;

    invoke-direct {v2, p0, p1, p1}, Lrx/internal/operators/cu$2;-><init>(Lrx/internal/operators/cu;Lrx/l;Lrx/l;)V

    .line 165
    :goto_0
    return-object v2

    .line 129
    :cond_0
    new-instance v1, Lrx/internal/operators/cu$a;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/cu$a;-><init>(Ljava/lang/Object;Lrx/l;)V

    .line 131
    .local v1, "ip":Lrx/internal/operators/cu$a;, "Lrx/internal/operators/cu$a<TR;>;"
    new-instance v2, Lrx/internal/operators/cu$3;

    invoke-direct {v2, p0, v0, v1}, Lrx/internal/operators/cu$3;-><init>(Lrx/internal/operators/cu;Ljava/lang/Object;Lrx/internal/operators/cu$a;)V

    .line 163
    .local v2, "parent":Lrx/l;, "Lrx/l<TT;>;"
    invoke-virtual {p1, v2}, Lrx/l;->add(Lrx/m;)V

    .line 164
    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    .local p0, "this":Lrx/internal/operators/cu;, "Lrx/internal/operators/cu<TR;TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cu;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
