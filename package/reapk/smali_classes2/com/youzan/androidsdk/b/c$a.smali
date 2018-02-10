.class public final Lcom/youzan/androidsdk/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youzan/androidsdk/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/youzan/androidsdk/b/f;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youzan/androidsdk/b/f;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Lcom/youzan/androidsdk/b/f;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/youzan/androidsdk/b/c$a;->a:Lcom/youzan/androidsdk/b/f;

    .line 74
    iput-object p2, p0, Lcom/youzan/androidsdk/b/c$a;->b:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/youzan/androidsdk/b/c$a;->c:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youzan/androidsdk/b/c$a;->a:Lcom/youzan/androidsdk/b/f;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youzan/androidsdk/b/c$a;->a:Lcom/youzan/androidsdk/b/f;

    iget-object v1, p0, Lcom/youzan/androidsdk/b/c$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/youzan/androidsdk/b/c$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/youzan/androidsdk/b/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
