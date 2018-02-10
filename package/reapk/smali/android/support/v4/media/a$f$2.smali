.class Landroid/support/v4/media/a$f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/a$f;->a(Ljava/lang/String;Landroid/support/v4/media/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/a$c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/media/a$f;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$f;Landroid/support/v4/media/a$c;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/a$f;

    .prologue
    .line 1602
    iput-object p1, p0, Landroid/support/v4/media/a$f$2;->c:Landroid/support/v4/media/a$f;

    iput-object p2, p0, Landroid/support/v4/media/a$f$2;->a:Landroid/support/v4/media/a$c;

    iput-object p3, p0, Landroid/support/v4/media/a$f$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Landroid/support/v4/media/a$f$2;->a:Landroid/support/v4/media/a$c;

    iget-object v1, p0, Landroid/support/v4/media/a$f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a$c;->a(Ljava/lang/String;)V

    .line 1607
    return-void
.end method
