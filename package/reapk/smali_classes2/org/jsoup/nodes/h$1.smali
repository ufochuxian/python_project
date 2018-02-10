.class Lorg/jsoup/nodes/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/h;->K(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/jsoup/nodes/h;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/jsoup/nodes/h$1;->b:Lorg/jsoup/nodes/h;

    iput-object p2, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jsoup/nodes/h$1;->a:Ljava/lang/String;

    iput-object v0, p1, Lorg/jsoup/nodes/h;->d:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 148
    return-void
.end method
