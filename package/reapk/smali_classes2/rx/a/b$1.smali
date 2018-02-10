.class Lrx/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a/b;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/a/b;


# direct methods
.method constructor <init>(Lrx/a/b;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lrx/a/b$1;->a:Lrx/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lrx/a/b$1;->a:Lrx/a/b;

    invoke-virtual {v0}, Lrx/a/b;->a()V

    .line 77
    return-void
.end method
