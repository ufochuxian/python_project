.class Lcom/mob/tools/gui/a$d$1;
.super Lcom/mob/tools/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/a$d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/gui/a$d;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/a$d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/gui/a$d;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mob/tools/gui/a$d$1;->a:Lcom/mob/tools/gui/a$d;

    invoke-direct {p0}, Lcom/mob/tools/b;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mob/tools/gui/a$d$1;->a:Lcom/mob/tools/gui/a$d;

    invoke-static {v0}, Lcom/mob/tools/gui/a$d;->a(Lcom/mob/tools/gui/a$d;)V

    .line 174
    invoke-super {p0}, Lcom/mob/tools/b;->run()V

    .line 175
    return-void
.end method
