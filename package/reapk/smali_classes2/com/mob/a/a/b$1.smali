.class Lcom/mob/a/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/a/b;->a(Lcom/mob/a/b;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/mob/a/b;

.field final synthetic c:Lcom/mob/a/a/b;


# direct methods
.method constructor <init>(Lcom/mob/a/a/b;[Ljava/lang/String;Lcom/mob/a/b;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mob/a/a/b$1;->c:Lcom/mob/a/a/b;

    iput-object p2, p0, Lcom/mob/a/a/b$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/a/a/b$1;->b:Lcom/mob/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/mob/a/a/b$1;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcom/mob/a/a/b$1;->c:Lcom/mob/a/a/b;

    iget-object v2, p0, Lcom/mob/a/a/b$1;->b:Lcom/mob/a/b;

    invoke-static {v1, v2}, Lcom/mob/a/a/b;->a(Lcom/mob/a/a/b;Lcom/mob/a/b;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 37
    return v3
.end method
