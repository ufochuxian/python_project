.class public Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x43f96453f6aeff68L


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasId()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;->_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractLessonTemplate{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate;->data:Lcom/jiliguala/niuwa/logic/network/json/InteractLessonTemplate$InteractData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
