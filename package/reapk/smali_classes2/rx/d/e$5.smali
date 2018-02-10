.class final Lrx/d/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/e;->a(Lrx/c/c;Lrx/c/b;)Lrx/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/b;


# direct methods
.method constructor <init>(Lrx/c/b;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lrx/d/e$5;->a:Lrx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Void;

    .prologue
    .line 267
    iget-object v0, p0, Lrx/d/e$5;->a:Lrx/c/b;

    invoke-interface {v0}, Lrx/c/b;->call()V

    .line 268
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/e$5;->a(Ljava/lang/Void;)V

    return-void
.end method
