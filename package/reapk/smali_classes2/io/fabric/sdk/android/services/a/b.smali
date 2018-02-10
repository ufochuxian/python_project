.class public Lio/fabric/sdk/android/services/a/b;
.super Lio/fabric/sdk/android/services/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/a/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lio/fabric/sdk/android/services/a/b;, "Lio/fabric/sdk/android/services/a/b<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/a/b;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/a/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lio/fabric/sdk/android/services/a/b;, "Lio/fabric/sdk/android/services/a/b<TT;>;"
    .local p1, "childCache":Lio/fabric/sdk/android/services/a/c;, "Lio/fabric/sdk/android/services/a/c<TT;>;"
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/a/a;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lio/fabric/sdk/android/services/a/b;, "Lio/fabric/sdk/android/services/a/b<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iput-object p2, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    .local p0, "this":Lio/fabric/sdk/android/services/a/b;, "Lio/fabric/sdk/android/services/a/b<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method protected c(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lio/fabric/sdk/android/services/a/b;, "Lio/fabric/sdk/android/services/a/b<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    return-object v0
.end method
