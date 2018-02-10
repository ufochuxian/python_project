.class public Lorg/cybergarage/upnp/ArgumentList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/Argument;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "argumentList"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getArgument(I)Lorg/cybergarage/upnp/Argument;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ArgumentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Argument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 55
    .local v3, "nArgs":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 64
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 58
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "argName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method

.method public set(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 6
    .param p1, "inArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 76
    .local v4, "nInArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 85
    return-void

    .line 78
    :cond_0
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    .line 79
    .local v1, "inArg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "inArgName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 81
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    if-nez v0, :cond_1

    .line 76
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 8
    .param p1, "inArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v4

    .line 95
    .local v4, "nArgs":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 107
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 98
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "argName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    .line 102
    .local v2, "inArg":Lorg/cybergarage/upnp/Argument;
    if-nez v2, :cond_1

    .line 103
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Argument \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" missing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 95
    .end local v1    # "argName":Ljava/lang/String;
    .end local v2    # "inArg":Lorg/cybergarage/upnp/Argument;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setResArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 8
    .param p1, "outArgList"    # Lorg/cybergarage/upnp/ArgumentList;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 117
    .local v3, "nArgs":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 129
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/Argument;

    move-result-object v0

    .line 120
    .local v0, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "argName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    .line 124
    .local v4, "outArg":Lorg/cybergarage/upnp/Argument;
    if-nez v4, :cond_1

    .line 125
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Argument \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" missing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_1
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 117
    .end local v1    # "argName":Ljava/lang/String;
    .end local v4    # "outArg":Lorg/cybergarage/upnp/Argument;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
