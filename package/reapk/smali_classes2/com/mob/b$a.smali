.class Lcom/mob/b$a;
.super Lcom/mob/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/b;


# direct methods
.method constructor <init>(Lcom/mob/b;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/mob/b$a;->a:Lcom/mob/b;

    invoke-direct {p0}, Lcom/mob/a/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "MOBSDK"

    return-object v0
.end method
