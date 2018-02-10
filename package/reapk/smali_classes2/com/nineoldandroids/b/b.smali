.class public abstract Lcom/nineoldandroids/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/nineoldandroids/b/b;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/nineoldandroids/b/b;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 55
    sget-object v2, Lcom/nineoldandroids/b/b;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/b/b;

    .line 56
    .local v0, "animator":Lcom/nineoldandroids/b/b;
    if-nez v0, :cond_0

    .line 57
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    .local v1, "version":I
    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 59
    new-instance v0, Lcom/nineoldandroids/b/d;

    .end local v0    # "animator":Lcom/nineoldandroids/b/b;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/b/d;-><init>(Landroid/view/View;)V

    .line 65
    .restart local v0    # "animator":Lcom/nineoldandroids/b/b;
    :goto_0
    sget-object v2, Lcom/nineoldandroids/b/b;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v1    # "version":I
    :cond_0
    return-object v0

    .line 60
    .restart local v1    # "version":I
    :cond_1
    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 61
    new-instance v0, Lcom/nineoldandroids/b/c;

    .end local v0    # "animator":Lcom/nineoldandroids/b/b;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/b/c;-><init>(Landroid/view/View;)V

    .restart local v0    # "animator":Lcom/nineoldandroids/b/b;
    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lcom/nineoldandroids/b/e;

    .end local v0    # "animator":Lcom/nineoldandroids/b/b;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/b/e;-><init>(Landroid/view/View;)V

    .restart local v0    # "animator":Lcom/nineoldandroids/b/b;
    goto :goto_0
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract a(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract a(J)Lcom/nineoldandroids/b/b;
.end method

.method public abstract a(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/b/b;
.end method

.method public abstract a(Lcom/nineoldandroids/a/a$a;)Lcom/nineoldandroids/b/b;
.end method

.method public abstract b()J
.end method

.method public abstract b(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract b(J)Lcom/nineoldandroids/b/b;
.end method

.method public abstract c(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract c()V
.end method

.method public abstract d(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract d()V
.end method

.method public abstract e(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract f(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract g(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract h(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract i(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract j(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract k(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract l(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract m(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract n(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract o(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract p(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract q(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract r(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract s(F)Lcom/nineoldandroids/b/b;
.end method

.method public abstract t(F)Lcom/nineoldandroids/b/b;
.end method
