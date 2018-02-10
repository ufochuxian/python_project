.class Lrx/internal/operators/au$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/au$a;->a(Lrx/e;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lrx/internal/operators/au$a;


# direct methods
.method constructor <init>(Lrx/internal/operators/au$a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lrx/internal/operators/au$a$1;->b:Lrx/internal/operators/au$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/Notification;)Lrx/Notification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    iget-object v0, p0, Lrx/internal/operators/au$a$1;->b:Lrx/internal/operators/au$a;

    iget-wide v0, v0, Lrx/internal/operators/au$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    .end local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 85
    .restart local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_1
    iget v0, p0, Lrx/internal/operators/au$a$1;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/au$a$1;->a:I

    .line 86
    iget v0, p0, Lrx/internal/operators/au$a$1;->a:I

    int-to-long v0, v0

    iget-object v2, p0, Lrx/internal/operators/au$a$1;->b:Lrx/internal/operators/au$a;

    iget-wide v2, v2, Lrx/internal/operators/au$a;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 87
    iget v0, p0, Lrx/internal/operators/au$a$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Notification;->a(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/au$a$1;->a(Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method
