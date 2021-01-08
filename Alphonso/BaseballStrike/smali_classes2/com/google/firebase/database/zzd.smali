.class final Lcom/google/firebase/database/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYL:Lcom/google/android/gms/internal/yr;

.field private synthetic zzbYM:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzbYN:Lcom/google/android/gms/internal/xf;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/yr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzd;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzd;->zzbYN:Lcom/google/android/gms/internal/xf;

    iput-object p3, p0, Lcom/google/firebase/database/zzd;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzd;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v0, Lcom/google/firebase/database/DatabaseReference;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v0, p0, Lcom/google/firebase/database/zzd;->zzbYM:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzbZi:Lcom/google/android/gms/internal/qo;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIJ()Lcom/google/android/gms/internal/wj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/qo;->zza(Lcom/google/android/gms/internal/wj;)Lcom/google/android/gms/internal/qo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/zzd;->zzbYN:Lcom/google/android/gms/internal/xf;

    iget-object v0, p0, Lcom/google/firebase/database/zzd;->zzbYL:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->zzJD()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qo;Lcom/google/android/gms/internal/xf;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
