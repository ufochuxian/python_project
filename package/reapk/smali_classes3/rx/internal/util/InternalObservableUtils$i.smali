.class final Lrx/internal/util/InternalObservableUtils$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/InternalObservableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/e",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/e",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/e",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/p",
            "<-",
            "Lrx/e",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/e",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "notificationHandler":Lrx/c/p;, "Lrx/c/p<-Lrx/e<+Ljava/lang/Void;>;+Lrx/e<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lrx/internal/util/InternalObservableUtils$i;->a:Lrx/c/p;

    .line 155
    return-void
.end method


# virtual methods
.method public a(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/e",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "notifications":Lrx/e;, "Lrx/e<+Lrx/Notification<*>;>;"
    iget-object v0, p0, Lrx/internal/util/InternalObservableUtils$i;->a:Lrx/c/p;

    sget-object v1, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lrx/internal/util/InternalObservableUtils$o;

    invoke-virtual {p1, v1}, Lrx/e;->r(Lrx/c/p;)Lrx/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/p;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/InternalObservableUtils$i;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
