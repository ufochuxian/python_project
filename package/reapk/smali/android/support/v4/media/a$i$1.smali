.class Landroid/support/v4/media/a$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/a$i;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ServiceConnection;

.field final synthetic b:Landroid/support/v4/media/a$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$i;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/a$i;

    .prologue
    .line 929
    iput-object p1, p0, Landroid/support/v4/media/a$i$1;->b:Landroid/support/v4/media/a$i;

    iput-object p2, p0, Landroid/support/v4/media/a$i$1;->a:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/support/v4/media/a$i$1;->a:Landroid/content/ServiceConnection;

    iget-object v1, p0, Landroid/support/v4/media/a$i$1;->b:Landroid/support/v4/media/a$i;

    iget-object v1, v1, Landroid/support/v4/media/a$i;->j:Landroid/support/v4/media/a$i$a;

    if-ne v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Landroid/support/v4/media/a$i$1;->b:Landroid/support/v4/media/a$i;

    invoke-virtual {v0}, Landroid/support/v4/media/a$i;->a()V

    .line 935
    iget-object v0, p0, Landroid/support/v4/media/a$i$1;->b:Landroid/support/v4/media/a$i;

    iget-object v0, v0, Landroid/support/v4/media/a$i;->f:Landroid/support/v4/media/a$b;

    invoke-virtual {v0}, Landroid/support/v4/media/a$b;->c()V

    .line 937
    :cond_0
    return-void
.end method
