.class Lrx/i$7;
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
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/i;


# direct methods
.method constructor <init>(Lrx/i;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 2267
    .local p0, "this":Lrx/i$7;, "Lrx/i.7;"
    iput-object p1, p0, Lrx/i$7;->b:Lrx/i;

    iput-object p2, p0, Lrx/i$7;->a:Lrx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2270
    .local p0, "this":Lrx/i$7;, "Lrx/i.7;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/i$7;->a:Lrx/c/c;

    invoke-static {p1}, Lrx/Notification;->a(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 2271
    return-void
.end method
