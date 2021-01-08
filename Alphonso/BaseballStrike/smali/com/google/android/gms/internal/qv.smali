.class final Lcom/google/android/gms/internal/qv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sj;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qr;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qv;->zzcdA:Lcom/google/android/gms/internal/qr;

    iput-object p2, p0, Lcom/google/android/gms/internal/qv;->zzcdE:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qv;->zzcdE:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/qv;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1}, Lcom/google/android/gms/internal/qr;->zzg(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/sl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/sl;->zzi(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qv;->zzcdA:Lcom/google/android/gms/internal/qr;

    const/16 v1, -0x9

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;I)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/qv;->zzcdA:Lcom/google/android/gms/internal/qr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qr;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qo;)Lcom/google/android/gms/internal/qo;

    return-void
.end method
