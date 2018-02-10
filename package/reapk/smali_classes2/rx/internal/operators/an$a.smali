.class final Lrx/internal/operators/an$a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/an$a$b;,
        Lrx/internal/operators/an$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "TT",
        "Left;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074e6f3404b26c4L


# instance fields
.field final a:Lrx/i/b;

.field final b:Lrx/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/l",
            "<-TR;>;"
        }
    .end annotation
.end field

.field c:Z

.field d:I

.field e:Z

.field f:I

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TTRight;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lrx/internal/operators/an;


# direct methods
.method public constructor <init>(Lrx/internal/operators/an;Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/an$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a;"
    .local p2, "subscriber":Lrx/l;, "Lrx/l<-TR;>;"
    iput-object p1, p0, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    .line 83
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iput-object p2, p0, Lrx/internal/operators/an$a;->b:Lrx/l;

    .line 85
    new-instance v0, Lrx/i/b;

    invoke-direct {v0}, Lrx/i/b;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/an$a;->g:Ljava/util/Map;

    .line 88
    return-void
.end method


# virtual methods
.method a()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TT",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/an$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a;"
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 95
    .local p0, "this":Lrx/internal/operators/an$a;, "Lrx/internal/operators/an<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.a;"
    iget-object v2, p0, Lrx/internal/operators/an$a;->b:Lrx/l;

    iget-object v3, p0, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v2, v3}, Lrx/l;->add(Lrx/m;)V

    .line 97
    new-instance v0, Lrx/internal/operators/an$a$a;

    invoke-direct {v0, p0}, Lrx/internal/operators/an$a$a;-><init>(Lrx/internal/operators/an$a;)V

    .line 98
    .local v0, "s1":Lrx/l;, "Lrx/l<TTLeft;>;"
    new-instance v1, Lrx/internal/operators/an$a$b;

    invoke-direct {v1, p0}, Lrx/internal/operators/an$a$b;-><init>(Lrx/internal/operators/an$a;)V

    .line 100
    .local v1, "s2":Lrx/l;, "Lrx/l<TTRight;>;"
    iget-object v2, p0, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v2, v0}, Lrx/i/b;->a(Lrx/m;)V

    .line 101
    iget-object v2, p0, Lrx/internal/operators/an$a;->a:Lrx/i/b;

    invoke-virtual {v2, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 103
    iget-object v2, p0, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v2, v2, Lrx/internal/operators/an;->a:Lrx/e;

    invoke-virtual {v2, v0}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 104
    iget-object v2, p0, Lrx/internal/operators/an$a;->h:Lrx/internal/operators/an;

    iget-object v2, v2, Lrx/internal/operators/an;->b:Lrx/e;

    invoke-virtual {v2, v1}, Lrx/e;->a(Lrx/l;)Lrx/m;

    .line 105
    return-void
.end method
