.class Landroid/support/v4/media/a$i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/a$i;->a(Ljava/lang/String;Landroid/support/v4/media/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/a$c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/support/v4/media/a$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/a$i;Landroid/support/v4/media/a$c;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/a$i;

    .prologue
    .line 1121
    iput-object p1, p0, Landroid/support/v4/media/a$i$3;->c:Landroid/support/v4/media/a$i;

    iput-object p2, p0, Landroid/support/v4/media/a$i$3;->a:Landroid/support/v4/media/a$c;

    iput-object p3, p0, Landroid/support/v4/media/a$i$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/support/v4/media/a$i$3;->a:Landroid/support/v4/media/a$c;

    iget-object v1, p0, Landroid/support/v4/media/a$i$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a$c;->a(Ljava/lang/String;)V

    .line 1125
    return-void
.end method
