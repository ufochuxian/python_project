.class final Lrx/c/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/m;->a(Lrx/c/b;Ljava/lang/Object;)Lrx/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/c/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lrx/c/m$1;->a:Lrx/c/b;

    iput-object p2, p0, Lrx/c/m$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lrx/c/m$1;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 292
    iget-object v0, p0, Lrx/c/m$1;->b:Ljava/lang/Object;

    return-object v0
.end method
