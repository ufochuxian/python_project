.class Lrx/i$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i;->d(Lrx/c/c;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 2272
    .local p0, "this":Lrx/i$8;, "Lrx/i.8;"
    iput-object p1, p0, Lrx/i$8;->b:Lrx/i;

    iput-object p2, p0, Lrx/i$8;->a:Lrx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 2275
    .local p0, "this":Lrx/i$8;, "Lrx/i.8;"
    iget-object v0, p0, Lrx/i$8;->a:Lrx/c/c;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 2276
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2272
    .local p0, "this":Lrx/i$8;, "Lrx/i.8;"
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/i$8;->a(Ljava/lang/Throwable;)V

    return-void
.end method
