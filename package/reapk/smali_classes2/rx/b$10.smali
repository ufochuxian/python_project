.class Lrx/b$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->b(Lrx/c/c;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/c/c;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lrx/b$10;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$10;->a:Lrx/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lrx/b$10;->a:Lrx/c/c;

    invoke-static {}, Lrx/Notification;->a()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/c/c;->call(Ljava/lang/Object;)V

    .line 1319
    return-void
.end method
