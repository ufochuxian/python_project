.class public Lcom/android/volley/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/k$a;,
        Lcom/android/volley/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/android/volley/b$a;

.field public final c:Lcom/android/volley/VolleyError;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .local p0, "this":Lcom/android/volley/k;, "Lcom/android/volley/k<TT;>;"
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/k;->d:Z

    .line 50
    iput-object v1, p0, Lcom/android/volley/k;->a:Ljava/lang/Object;

    .line 51
    iput-object v1, p0, Lcom/android/volley/k;->b:Lcom/android/volley/b$a;

    .line 52
    iput-object p1, p0, Lcom/android/volley/k;->c:Lcom/android/volley/VolleyError;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/android/volley/b$a;)V
    .locals 1
    .param p2, "cacheEntry"    # Lcom/android/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/volley/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/volley/k;, "Lcom/android/volley/k<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/k;->d:Z

    .line 44
    iput-object p1, p0, Lcom/android/volley/k;->a:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/android/volley/k;->b:Lcom/android/volley/b$a;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/k;->c:Lcom/android/volley/VolleyError;

    .line 47
    return-void
.end method

.method public static a(Lcom/android/volley/VolleyError;)Lcom/android/volley/k;
    .locals 1
    .param p0, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/VolleyError;",
            ")",
            "Lcom/android/volley/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p0}, Lcom/android/volley/k;-><init>(Lcom/android/volley/VolleyError;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/k;
    .locals 1
    .param p1, "cacheEntry"    # Lcom/android/volley/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/volley/b$a;",
            ")",
            "Lcom/android/volley/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/k;-><init>(Ljava/lang/Object;Lcom/android/volley/b$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/android/volley/k;, "Lcom/android/volley/k<TT;>;"
    iget-object v0, p0, Lcom/android/volley/k;->c:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
