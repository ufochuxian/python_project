.class Lrx/internal/operators/au$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au$b;->a(Lrx/e;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/au$b;


# direct methods
.method constructor <init>(Lrx/internal/operators/au$b;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lrx/internal/operators/au$b$1;->a:Lrx/internal/operators/au$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Notification;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/au$b$1;->a(Lrx/Notification;Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/Notification;Lrx/Notification;)Lrx/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "n":Lrx/Notification;, "Lrx/Notification<Ljava/lang/Integer;>;"
    .local p2, "term":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "value":I
    iget-object v1, p0, Lrx/internal/operators/au$b$1;->a:Lrx/internal/operators/au$b;

    iget-object v1, v1, Lrx/internal/operators/au$b;->a:Lrx/c/q;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lrx/c/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Notification;->a(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p2

    .line 114
    .end local p2    # "term":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_0
    return-object p2
.end method
