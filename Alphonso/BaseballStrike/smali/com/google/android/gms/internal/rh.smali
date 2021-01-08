.class final Lcom/google/android/gms/internal/rh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/vb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vb",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/rs;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdN:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rh;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput p2, p0, Lcom/google/android/gms/internal/rh;->zzcdN:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/uy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/uy",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/rs;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/rh;->zzcdA:Lcom/google/android/gms/internal/qr;

    iget v1, p0, Lcom/google/android/gms/internal/rh;->zzcdN:I

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/uy;I)V

    return-void
.end method
