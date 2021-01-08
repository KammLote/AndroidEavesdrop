.class final Lcom/google/android/gms/internal/nb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uv",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZK:Lcom/google/android/gms/internal/us;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/na;Lcom/google/android/gms/internal/us;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nb;->zzbZK:Lcom/google/android/gms/internal/us;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qo;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p3, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/nb;->zzbZK:Lcom/google/android/gms/internal/us;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/us;->zzJ(Lcom/google/android/gms/internal/qo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
