.class public Lrx/internal/operators/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/cl$a;,
        Lrx/internal/operators/cl$b;
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
.field private final a:Ljava/lang/Long;

.field private final b:Lrx/c/b;

.field private final c:Lrx/a$d;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lrx/internal/operators/cl;->a:Ljava/lang/Long;

    .line 47
    iput-object v0, p0, Lrx/internal/operators/cl;->b:Lrx/c/b;

    .line 48
    sget-object v0, Lrx/a;->b:Lrx/a$d;

    iput-object v0, p0, Lrx/internal/operators/cl;->c:Lrx/a$d;

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "capacity"    # J

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lrx/a;->b:Lrx/a$d;

    invoke-direct {p0, p1, p2, v0, v1}, Lrx/internal/operators/cl;-><init>(JLrx/c/b;Lrx/a$d;)V

    .line 59
    return-void
.end method

.method public constructor <init>(JLrx/c/b;)V
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/c/b;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    sget-object v0, Lrx/a;->b:Lrx/a$d;

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/cl;-><init>(JLrx/c/b;Lrx/a$d;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLrx/c/b;Lrx/a$d;)V
    .locals 3
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/c/b;
    .param p4, "overflowStrategy"    # Lrx/a$d;

    .prologue
    .line 80
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p4, :cond_1

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The BackpressureOverflow strategy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/cl;->a:Ljava/lang/Long;

    .line 88
    iput-object p3, p0, Lrx/internal/operators/cl;->b:Lrx/c/b;

    .line 89
    iput-object p4, p0, Lrx/internal/operators/cl;->c:Lrx/a$d;

    .line 90
    return-void
.end method

.method public static a()Lrx/internal/operators/cl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/cl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lrx/internal/operators/cl$b;->a:Lrx/internal/operators/cl;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 4
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
    .line 97
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/cl$a;

    iget-object v1, p0, Lrx/internal/operators/cl;->a:Ljava/lang/Long;

    iget-object v2, p0, Lrx/internal/operators/cl;->b:Lrx/c/b;

    iget-object v3, p0, Lrx/internal/operators/cl;->c:Lrx/a$d;

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/cl$a;-><init>(Lrx/l;Ljava/lang/Long;Lrx/c/b;Lrx/a$d;)V

    .line 101
    .local v0, "parent":Lrx/internal/operators/cl$a;, "Lrx/internal/operators/cl$a<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 102
    invoke-virtual {v0}, Lrx/internal/operators/cl$a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 104
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/cl;, "Lrx/internal/operators/cl<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/cl;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
