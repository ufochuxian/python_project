.class Lrx/b$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$5$1;->onSubscribe(Lrx/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b$5$1;


# direct methods
.method constructor <init>(Lrx/b$5$1;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lrx/b$5$1$1;->a:Lrx/b$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lrx/b$5$1$1;->a:Lrx/b$5$1;

    invoke-virtual {v0}, Lrx/b$5$1;->a()V

    .line 988
    return-void
.end method
