.class Lrx/h/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/h;->a(Ljava/lang/Throwable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lrx/h/h;


# direct methods
.method constructor <init>(Lrx/h/h;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lrx/h/h$3;, "Lrx/h/h.3;"
    iput-object p1, p0, Lrx/h/h$3;->b:Lrx/h/h;

    iput-object p2, p0, Lrx/h/h$3;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lrx/h/h$3;, "Lrx/h/h.3;"
    iget-object v0, p0, Lrx/h/h$3;->b:Lrx/h/h;

    iget-object v1, p0, Lrx/h/h$3;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lrx/h/h;->b(Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
