.class Landroid/support/v4/media/session/c$d$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/c$d$b;->a(Landroid/support/v4/media/session/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/p;

.field final synthetic b:Landroid/support/v4/media/session/c$d$b;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c$d$b;Landroid/support/v4/media/session/p;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/c$d$b;

    .prologue
    .line 1933
    iput-object p1, p0, Landroid/support/v4/media/session/c$d$b$2;->b:Landroid/support/v4/media/session/c$d$b;

    iput-object p2, p0, Landroid/support/v4/media/session/c$d$b$2;->a:Landroid/support/v4/media/session/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Landroid/support/v4/media/session/c$d$b$2;->b:Landroid/support/v4/media/session/c$d$b;

    invoke-static {v0}, Landroid/support/v4/media/session/c$d$b;->a(Landroid/support/v4/media/session/c$d$b;)Landroid/support/v4/media/session/c$a;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/c$d$b$2;->a:Landroid/support/v4/media/session/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/c$a;->a(Landroid/support/v4/media/session/p;)V

    .line 1937
    return-void
.end method
