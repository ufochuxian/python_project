.class Landroid/support/v4/h/a$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/h/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/h/a$e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/h/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/a$a;

.field final synthetic b:Landroid/support/v4/h/a$e;


# direct methods
.method constructor <init>(Landroid/support/v4/h/a$e;Landroid/support/v4/h/a$a;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/h/a$e;

    .prologue
    .line 200
    .local p0, "this":Landroid/support/v4/h/a$e$1;, "Landroid/support/v4/h/a$e$1;"
    iput-object p1, p0, Landroid/support/v4/h/a$e$1;->b:Landroid/support/v4/h/a$e;

    iput-object p2, p0, Landroid/support/v4/h/a$e$1;->a:Landroid/support/v4/h/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Landroid/support/v4/h/a$e$1;, "Landroid/support/v4/h/a$e$1;"
    iget-object v0, p0, Landroid/support/v4/h/a$e$1;->a:Landroid/support/v4/h/a$a;

    invoke-interface {v0}, Landroid/support/v4/h/a$a;->a()V

    .line 204
    return-void
.end method
